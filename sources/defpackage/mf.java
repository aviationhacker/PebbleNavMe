package defpackage;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonSyntaxException;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class mf implements JsonDeserializer<Date>, JsonSerializer<Date> {
    private final DateFormat a;
    private final DateFormat b;
    private final DateFormat c;

    mf() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    public mf(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    public mf(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    mf(DateFormat dateFormat, DateFormat dateFormat2) {
        this.a = dateFormat;
        this.b = dateFormat2;
        this.c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    @Override // com.google.gson.JsonSerializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonPrimitive jsonPrimitive;
        synchronized (this.b) {
            jsonPrimitive = new JsonPrimitive(this.a.format(date));
        }
        return jsonPrimitive;
    }

    @Override // com.google.gson.JsonDeserializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
        if (!(jsonElement instanceof JsonPrimitive)) {
            throw new JsonParseException("The date should be a string value");
        }
        Date dateA = a(jsonElement);
        if (type != Date.class) {
            if (type == Timestamp.class) {
                return new Timestamp(dateA.getTime());
            }
            if (type == java.sql.Date.class) {
                return new java.sql.Date(dateA.getTime());
            }
            throw new IllegalArgumentException(getClass() + " cannot deserialize to " + type);
        }
        return dateA;
    }

    private Date a(JsonElement jsonElement) {
        Date date;
        synchronized (this.b) {
            try {
                date = this.b.parse(jsonElement.getAsString());
            } catch (ParseException e) {
                try {
                    date = this.a.parse(jsonElement.getAsString());
                } catch (ParseException e2) {
                    try {
                        date = this.c.parse(jsonElement.getAsString());
                    } catch (ParseException e3) {
                        throw new JsonSyntaxException(jsonElement.getAsString(), e3);
                    }
                }
            }
        }
        return date;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(mf.class.getSimpleName());
        sb.append('(').append(this.b.getClass().getSimpleName()).append(')');
        return sb.toString();
    }
}
