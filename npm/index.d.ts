declare module '@apiverve/cpiinflation' {
  export interface cpiinflationOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface cpiinflationResponse {
    status: string;
    error: string | null;
    data: CPIInflationData;
    code?: number;
  }


  interface CPIInflationData {
      yearMonth:  string;
      year:       number;
      month:      number;
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
      index:              number;
      yearOverYearChange: number;
  }

  export default class cpiinflationWrapper {
    constructor(options: cpiinflationOptions);

    execute(callback: (error: any, data: cpiinflationResponse | null) => void): Promise<cpiinflationResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: cpiinflationResponse | null) => void): Promise<cpiinflationResponse>;
    execute(query?: Record<string, any>): Promise<cpiinflationResponse>;
  }
}
