package com.getpebble.android.kit.util;

import android.util.Base64;
import com.getpebble.android.kit.util.PebbleTuple;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PebbleDictionary implements Iterable<PebbleTuple> {
    protected final Map<Integer, PebbleTuple> tuples = new HashMap();

    @Override // java.lang.Iterable
    public Iterator<PebbleTuple> iterator() {
        return this.tuples.values().iterator();
    }

    public int size() {
        return this.tuples.size();
    }

    public boolean contains(int i) {
        return this.tuples.containsKey(Integer.valueOf(i));
    }

    public void remove(int i) {
        this.tuples.remove(Integer.valueOf(i));
    }

    public void addBytes(int i, byte[] bArr) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.BYTES, PebbleTuple.b.NONE, bArr));
    }

    public void addString(int i, String str) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.STRING, PebbleTuple.b.NONE, str));
    }

    public void addInt8(int i, byte b) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.INT, PebbleTuple.b.BYTE, b));
    }

    public void addUint8(int i, byte b) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.UINT, PebbleTuple.b.BYTE, b));
    }

    public void addInt16(int i, short s) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.INT, PebbleTuple.b.SHORT, s));
    }

    public void addUint16(int i, short s) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.UINT, PebbleTuple.b.SHORT, s));
    }

    public void addInt32(int i, int i2) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.INT, PebbleTuple.b.WORD, i2));
    }

    public void addUint32(int i, int i2) {
        addTuple(PebbleTuple.a(i, PebbleTuple.a.UINT, PebbleTuple.b.WORD, i2));
    }

    private PebbleTuple a(int i, PebbleTuple.a aVar) {
        if (!this.tuples.containsKey(Integer.valueOf(i)) || this.tuples.get(Integer.valueOf(i)) == null) {
            return null;
        }
        PebbleTuple pebbleTuple = this.tuples.get(Integer.valueOf(i));
        if (pebbleTuple.d != aVar) {
            throw new PebbleDictTypeException(i, aVar, pebbleTuple.d);
        }
        return pebbleTuple;
    }

    public Long getInteger(int i) {
        PebbleTuple pebbleTupleA = a(i, PebbleTuple.a.INT);
        if (pebbleTupleA == null) {
            return null;
        }
        return (Long) pebbleTupleA.g;
    }

    public Long getUnsignedIntegerAsLong(int i) {
        PebbleTuple pebbleTupleA = a(i, PebbleTuple.a.UINT);
        if (pebbleTupleA == null) {
            return null;
        }
        return (Long) pebbleTupleA.g;
    }

    public byte[] getBytes(int i) {
        PebbleTuple pebbleTupleA = a(i, PebbleTuple.a.BYTES);
        if (pebbleTupleA == null) {
            return null;
        }
        return (byte[]) pebbleTupleA.g;
    }

    public String getString(int i) {
        PebbleTuple pebbleTupleA = a(i, PebbleTuple.a.STRING);
        if (pebbleTupleA == null) {
            return null;
        }
        return (String) pebbleTupleA.g;
    }

    protected void addTuple(PebbleTuple pebbleTuple) {
        if (this.tuples.size() > 255) {
            throw new TupleOverflowException();
        }
        this.tuples.put(Integer.valueOf(pebbleTuple.c), pebbleTuple);
    }

    public static class PebbleDictTypeException extends RuntimeException {
        public PebbleDictTypeException(long j, PebbleTuple.a aVar, PebbleTuple.a aVar2) {
            super(String.format("Expected type '%s', but got '%s' for key 0x%08x", aVar.name(), aVar2.name(), Long.valueOf(j)));
        }
    }

    public static class TupleOverflowException extends RuntimeException {
        public TupleOverflowException() {
            super("Too many tuples in dict");
        }
    }

    public String toJsonString() {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<PebbleTuple> it = this.tuples.values().iterator();
            while (it.hasNext()) {
                jSONArray.put(a(it.next()));
            }
            return jSONArray.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static PebbleDictionary fromJson(String str) throws JSONException {
        PebbleDictionary pebbleDictionary = new PebbleDictionary();
        JSONArray jSONArray = new JSONArray(str);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                int i3 = jSONObject.getInt("key");
                PebbleTuple.a aVar = PebbleTuple.a.get(jSONObject.getString("type"));
                PebbleTuple.b bVar = PebbleTuple.b.get(Integer.valueOf(jSONObject.getInt("length")));
                switch (aVar) {
                    case BYTES:
                        pebbleDictionary.addBytes(i3, Base64.decode(jSONObject.getString("value"), 2));
                        break;
                    case STRING:
                        pebbleDictionary.addString(i3, jSONObject.getString("value"));
                        break;
                    case INT:
                        if (bVar == PebbleTuple.b.BYTE) {
                            pebbleDictionary.addInt8(i3, (byte) jSONObject.getInt("value"));
                        } else if (bVar == PebbleTuple.b.SHORT) {
                            pebbleDictionary.addInt16(i3, (short) jSONObject.getInt("value"));
                        } else if (bVar == PebbleTuple.b.WORD) {
                            pebbleDictionary.addInt32(i3, jSONObject.getInt("value"));
                        }
                        break;
                    case UINT:
                        if (bVar == PebbleTuple.b.BYTE) {
                            pebbleDictionary.addUint8(i3, (byte) jSONObject.getInt("value"));
                        } else if (bVar == PebbleTuple.b.SHORT) {
                            pebbleDictionary.addUint16(i3, (short) jSONObject.getInt("value"));
                        } else if (bVar == PebbleTuple.b.WORD) {
                            pebbleDictionary.addUint32(i3, jSONObject.getInt("value"));
                        }
                        break;
                }
                i = i2 + 1;
            } else {
                return pebbleDictionary;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static JSONObject a(PebbleTuple pebbleTuple) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", pebbleTuple.c);
        jSONObject.put("type", pebbleTuple.d.a());
        jSONObject.put("length", pebbleTuple.e.e);
        switch (pebbleTuple.d) {
            case BYTES:
                jSONObject.put("value", Base64.encodeToString((byte[]) pebbleTuple.g, 2));
                return jSONObject;
            case STRING:
            case INT:
            case UINT:
                jSONObject.put("value", pebbleTuple.g);
                return jSONObject;
            default:
                return jSONObject;
        }
    }
}
