package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class JsonPrimitive extends JsonElement {
    private static final Class<?>[] a = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    private Object b;

    public JsonPrimitive(Boolean bool) {
        a(bool);
    }

    public JsonPrimitive(Number number) {
        a(number);
    }

    public JsonPrimitive(String str) {
        a(str);
    }

    public JsonPrimitive(Character ch) {
        a(ch);
    }

    JsonPrimitive(Object obj) {
        a(obj);
    }

    void a(Object obj) {
        if (obj instanceof Character) {
            this.b = String.valueOf(((Character) obj).charValue());
        } else {
            C$Gson$Preconditions.checkArgument((obj instanceof Number) || b(obj));
            this.b = obj;
        }
    }

    public boolean isBoolean() {
        return this.b instanceof Boolean;
    }

    @Override // com.google.gson.JsonElement
    Boolean a() {
        return (Boolean) this.b;
    }

    @Override // com.google.gson.JsonElement
    public boolean getAsBoolean() {
        return isBoolean() ? a().booleanValue() : Boolean.parseBoolean(getAsString());
    }

    public boolean isNumber() {
        return this.b instanceof Number;
    }

    @Override // com.google.gson.JsonElement
    public Number getAsNumber() {
        return this.b instanceof String ? new LazilyParsedNumber((String) this.b) : (Number) this.b;
    }

    public boolean isString() {
        return this.b instanceof String;
    }

    @Override // com.google.gson.JsonElement
    public String getAsString() {
        if (isNumber()) {
            return getAsNumber().toString();
        }
        if (isBoolean()) {
            return a().toString();
        }
        return (String) this.b;
    }

    @Override // com.google.gson.JsonElement
    public double getAsDouble() {
        return isNumber() ? getAsNumber().doubleValue() : Double.parseDouble(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public BigDecimal getAsBigDecimal() {
        return this.b instanceof BigDecimal ? (BigDecimal) this.b : new BigDecimal(this.b.toString());
    }

    @Override // com.google.gson.JsonElement
    public BigInteger getAsBigInteger() {
        return this.b instanceof BigInteger ? (BigInteger) this.b : new BigInteger(this.b.toString());
    }

    @Override // com.google.gson.JsonElement
    public float getAsFloat() {
        return isNumber() ? getAsNumber().floatValue() : Float.parseFloat(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public long getAsLong() {
        return isNumber() ? getAsNumber().longValue() : Long.parseLong(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public short getAsShort() {
        return isNumber() ? getAsNumber().shortValue() : Short.parseShort(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public int getAsInt() {
        return isNumber() ? getAsNumber().intValue() : Integer.parseInt(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public byte getAsByte() {
        return isNumber() ? getAsNumber().byteValue() : Byte.parseByte(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public char getAsCharacter() {
        return getAsString().charAt(0);
    }

    private static boolean b(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : a) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.b == null) {
            return 31;
        }
        if (a(this)) {
            long jLongValue = getAsNumber().longValue();
            return (int) (jLongValue ^ (jLongValue >>> 32));
        }
        if (this.b instanceof Number) {
            long jDoubleToLongBits = Double.doubleToLongBits(getAsNumber().doubleValue());
            return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
        }
        return this.b.hashCode();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        if (this.b == null) {
            return jsonPrimitive.b == null;
        }
        if (a(this) && a(jsonPrimitive)) {
            return getAsNumber().longValue() == jsonPrimitive.getAsNumber().longValue();
        }
        if ((this.b instanceof Number) && (jsonPrimitive.b instanceof Number)) {
            double dDoubleValue = getAsNumber().doubleValue();
            double dDoubleValue2 = jsonPrimitive.getAsNumber().doubleValue();
            if (dDoubleValue == dDoubleValue2 || (Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2))) {
                z = true;
            }
            return z;
        }
        return this.b.equals(jsonPrimitive.b);
    }

    private static boolean a(JsonPrimitive jsonPrimitive) {
        if (!(jsonPrimitive.b instanceof Number)) {
            return false;
        }
        Number number = (Number) jsonPrimitive.b;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }
}
