declare module '@apiverve/cpiinflation' {
  export interface cpiinflationOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface cpiinflationResponse {
    status: string;
    error: string | null;
    data: CPIInflationData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CPIInflationData {
      yearMonth:  null | string;
      year:       number | null;
      month:      number | null;
      categories: Categories;
  }
  
  interface Categories {
      all:            All;
      food:           All;
      housing:        All;
      transportation: All;
      medical:        All;
      gasoline:       All;
      electricity:    All;
  }
  
  interface All {
      index:              number | null;
      yearOverYearChange: number | null;
  }

  export default class cpiinflationWrapper {
    constructor(options: cpiinflationOptions);

    execute(callback: (error: any, data: cpiinflationResponse | null) => void): Promise<cpiinflationResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: cpiinflationResponse | null) => void): Promise<cpiinflationResponse>;
    execute(query?: Record<string, any>): Promise<cpiinflationResponse>;
  }
}
