// Converter.java

// To use this code, add the following Maven dependency to your project:
//
//
//     com.fasterxml.jackson.core     : jackson-databind          : 2.9.0
//     com.fasterxml.jackson.datatype : jackson-datatype-jsr310   : 2.9.0
//
// Import this package:
//
//     import com.apiverve.data.Converter;
//
// Then you can deserialize a JSON string with
//
//     CPIInflationData data = Converter.fromJsonString(jsonString);

package com.apiverve.cpiinflation.data;

import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.util.*;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;

public class Converter {
    // Date-time helpers

    private static final DateTimeFormatter DATE_TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_INSTANT)
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ssX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetDateTime parseDateTimeString(String str) {
        return ZonedDateTime.from(Converter.DATE_TIME_FORMATTER.parse(str)).toOffsetDateTime();
    }

    private static final DateTimeFormatter TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_TIME)
            .parseDefaulting(ChronoField.YEAR, 2020)
            .parseDefaulting(ChronoField.MONTH_OF_YEAR, 1)
            .parseDefaulting(ChronoField.DAY_OF_MONTH, 1)
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetTime parseTimeString(String str) {
        return ZonedDateTime.from(Converter.TIME_FORMATTER.parse(str)).toOffsetDateTime().toOffsetTime();
    }
    // Serialize/deserialize helpers

    public static CPIInflationData fromJsonString(String json) throws IOException {
        return getObjectReader().readValue(json);
    }

    public static String toJsonString(CPIInflationData obj) throws JsonProcessingException {
        return getObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader reader;
    private static ObjectWriter writer;

    private static void instantiateMapper() {
        ObjectMapper mapper = new ObjectMapper();
        mapper.findAndRegisterModules();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
        SimpleModule module = new SimpleModule();
        module.addDeserializer(OffsetDateTime.class, new JsonDeserializer<OffsetDateTime>() {
            @Override
            public OffsetDateTime deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
                String value = jsonParser.getText();
                return Converter.parseDateTimeString(value);
            }
        });
        mapper.registerModule(module);
        reader = mapper.readerFor(CPIInflationData.class);
        writer = mapper.writerFor(CPIInflationData.class);
    }

    private static ObjectReader getObjectReader() {
        if (reader == null) instantiateMapper();
        return reader;
    }

    private static ObjectWriter getObjectWriter() {
        if (writer == null) instantiateMapper();
        return writer;
    }
}

// CPIInflationData.java

package com.apiverve.cpiinflation.data;

import com.fasterxml.jackson.annotation.*;

public class CPIInflationData {
    private String yearMonth;
    private long year;
    private long month;
    private Categories categories;

    @JsonProperty("yearMonth")
    public String getYearMonth() { return yearMonth; }
    @JsonProperty("yearMonth")
    public void setYearMonth(String value) { this.yearMonth = value; }

    @JsonProperty("year")
    public long getYear() { return year; }
    @JsonProperty("year")
    public void setYear(long value) { this.year = value; }

    @JsonProperty("month")
    public long getMonth() { return month; }
    @JsonProperty("month")
    public void setMonth(long value) { this.month = value; }

    @JsonProperty("categories")
    public Categories getCategories() { return categories; }
    @JsonProperty("categories")
    public void setCategories(Categories value) { this.categories = value; }
}

// Categories.java

package com.apiverve.cpiinflation.data;

import com.fasterxml.jackson.annotation.*;

public class Categories {
    private All all;
    private All food;
    private All housing;
    private All transportation;
    private All medical;
    private All gasoline;
    private All electricity;

    @JsonProperty("all")
    public All getAll() { return all; }
    @JsonProperty("all")
    public void setAll(All value) { this.all = value; }

    @JsonProperty("food")
    public All getFood() { return food; }
    @JsonProperty("food")
    public void setFood(All value) { this.food = value; }

    @JsonProperty("housing")
    public All getHousing() { return housing; }
    @JsonProperty("housing")
    public void setHousing(All value) { this.housing = value; }

    @JsonProperty("transportation")
    public All getTransportation() { return transportation; }
    @JsonProperty("transportation")
    public void setTransportation(All value) { this.transportation = value; }

    @JsonProperty("medical")
    public All getMedical() { return medical; }
    @JsonProperty("medical")
    public void setMedical(All value) { this.medical = value; }

    @JsonProperty("gasoline")
    public All getGasoline() { return gasoline; }
    @JsonProperty("gasoline")
    public void setGasoline(All value) { this.gasoline = value; }

    @JsonProperty("electricity")
    public All getElectricity() { return electricity; }
    @JsonProperty("electricity")
    public void setElectricity(All value) { this.electricity = value; }
}

// All.java

package com.apiverve.cpiinflation.data;

import com.fasterxml.jackson.annotation.*;

public class All {
    private double index;
    private double yearOverYearChange;

    @JsonProperty("index")
    public double getIndex() { return index; }
    @JsonProperty("index")
    public void setIndex(double value) { this.index = value; }

    @JsonProperty("yearOverYearChange")
    public double getYearOverYearChange() { return yearOverYearChange; }
    @JsonProperty("yearOverYearChange")
    public void setYearOverYearChange(double value) { this.yearOverYearChange = value; }
}