package org.eclipse.jetty.http;

import java.io.IOException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.View;
import org.eclipse.jetty.io.bio.StreamEndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class HttpParser implements Parser {
    public static final int STATE_CHUNK = 6;
    public static final int STATE_CHUNKED_CONTENT = 3;
    public static final int STATE_CHUNK_PARAMS = 5;
    public static final int STATE_CHUNK_SIZE = 4;
    public static final int STATE_CONTENT = 2;
    public static final int STATE_END = 0;
    public static final int STATE_END0 = -8;
    public static final int STATE_END1 = -7;
    public static final int STATE_EOF_CONTENT = 1;
    public static final int STATE_FIELD0 = -13;
    public static final int STATE_FIELD2 = -6;
    public static final int STATE_HEADER = -5;
    public static final int STATE_HEADER_IN_NAME = -3;
    public static final int STATE_HEADER_IN_VALUE = -1;
    public static final int STATE_HEADER_NAME = -4;
    public static final int STATE_HEADER_VALUE = -2;
    public static final int STATE_SEEKING_EOF = 7;
    public static final int STATE_SPACE1 = -12;
    public static final int STATE_SPACE2 = -9;
    public static final int STATE_START = -14;
    public static final int STATE_STATUS = -11;
    public static final int STATE_URI = -10;
    private static final Logger a = Log.getLogger((Class<?>) HttpParser.class);
    protected int _chunkLength;
    protected int _chunkPosition;
    protected long _contentLength;
    protected long _contentPosition;
    protected final View _contentView;
    protected byte _eol;
    protected int _length;
    protected int _state;
    private final EventHandler b;
    private final Buffers c;
    private final EndPoint d;
    private Buffer e;
    private Buffer f;
    private Buffer g;
    private BufferCache.CachedBuffer h;
    private final View.CaseInsensitive i;
    private final View.CaseInsensitive j;
    private String k;
    private int l;
    private boolean m;
    private boolean n;
    private boolean o;

    public HttpParser(Buffer buffer, EventHandler eventHandler) {
        this._contentView = new View();
        this._state = -14;
        this.d = null;
        this.c = null;
        this.e = buffer;
        this.g = buffer;
        this.b = eventHandler;
        this.i = new View.CaseInsensitive(this.e);
        this.j = new View.CaseInsensitive(this.e);
    }

    public HttpParser(Buffers buffers, EndPoint endPoint, EventHandler eventHandler) {
        this._contentView = new View();
        this._state = -14;
        this.c = buffers;
        this.d = endPoint;
        this.b = eventHandler;
        this.i = new View.CaseInsensitive();
        this.j = new View.CaseInsensitive();
    }

    public long getContentLength() {
        return this._contentLength;
    }

    public long getContentRead() {
        return this._contentPosition;
    }

    public void setHeadResponse(boolean z) {
        this.o = z;
    }

    public int getState() {
        return this._state;
    }

    public boolean inContentState() {
        return this._state > 0;
    }

    public boolean inHeaderState() {
        return this._state < 0;
    }

    public boolean isChunking() {
        return this._contentLength == -2;
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isIdle() {
        return isState(-14);
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isComplete() {
        return isState(0);
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isMoreInBuffer() {
        return (this.e != null && this.e.hasContent()) || (this.f != null && this.f.hasContent());
    }

    public boolean isState(int i) {
        return this._state == i;
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isPersistent() {
        return this.n;
    }

    @Override // org.eclipse.jetty.http.Parser
    public void setPersistent(boolean z) {
        this.n = z;
        if (this.n) {
            return;
        }
        if (this._state == 0 || this._state == -14) {
            this._state = 7;
        }
    }

    public void parse() {
        if (this._state == 0) {
            reset();
        }
        if (this._state != -14) {
            throw new IllegalStateException("!START");
        }
        while (this._state != 0 && parseNext() >= 0) {
        }
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean parseAvailable() {
        boolean z = parseNext() > 0;
        while (!isComplete() && this.g != null && this.g.length() > 0 && !this._contentView.hasContent()) {
            z |= parseNext() > 0;
        }
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:317:0x074f  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x076c A[Catch: HttpException -> 0x009f, TryCatch #2 {HttpException -> 0x009f, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:10:0x0011, B:12:0x0016, B:14:0x001e, B:15:0x002a, B:18:0x0034, B:21:0x0059, B:43:0x00aa, B:45:0x00b0, B:47:0x00b8, B:49:0x00bc, B:50:0x00dc, B:51:0x00de, B:52:0x00e1, B:54:0x00e8, B:55:0x00ed, B:57:0x00f6, B:60:0x0106, B:62:0x010c, B:64:0x0112, B:65:0x0117, B:58:0x00f7, B:59:0x00fb, B:36:0x0095, B:22:0x005f, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:30:0x007c, B:34:0x008c, B:67:0x011b, B:68:0x0122, B:69:0x0123, B:70:0x0128, B:72:0x0130, B:75:0x013d, B:78:0x014b, B:81:0x0169, B:86:0x017c, B:87:0x0183, B:97:0x01a5, B:98:0x01ac, B:91:0x018a, B:93:0x0193, B:94:0x019c, B:101:0x01b1, B:106:0x01d5, B:110:0x01e9, B:111:0x021c, B:114:0x0229, B:118:0x024b, B:125:0x0288, B:127:0x028c, B:128:0x02bc, B:122:0x027a, B:133:0x02e9, B:135:0x02ed, B:136:0x0302, B:139:0x030f, B:140:0x0332, B:142:0x0350, B:143:0x0353, B:145:0x0357, B:147:0x035f, B:149:0x0367, B:161:0x03a4, B:246:0x0530, B:248:0x053d, B:250:0x0551, B:165:0x03b2, B:167:0x03b6, B:169:0x03bc, B:171:0x03c2, B:173:0x03c8, B:174:0x03cc, B:176:0x03d8, B:178:0x03e0, B:180:0x03ea, B:181:0x03f2, B:184:0x03fe, B:185:0x0401, B:235:0x04f8, B:236:0x0502, B:237:0x050c, B:239:0x0515, B:241:0x051b, B:244:0x0522, B:234:0x04f3, B:222:0x04c9, B:224:0x04d1, B:226:0x04d5, B:228:0x04db, B:230:0x04e1, B:233:0x04ed, B:232:0x04e7, B:151:0x036b, B:153:0x036f, B:154:0x0372, B:156:0x0379, B:157:0x037b, B:159:0x0383, B:190:0x0428, B:193:0x0430, B:194:0x0436, B:196:0x043e, B:198:0x0445, B:199:0x0451, B:200:0x0452, B:202:0x0461, B:203:0x0467, B:205:0x0475, B:206:0x047b, B:208:0x0483, B:209:0x048b, B:210:0x048c, B:211:0x0492, B:213:0x0497, B:215:0x04a5, B:216:0x04b1, B:217:0x04b4, B:220:0x04c1, B:221:0x04c5, B:218:0x04b7, B:219:0x04bc, B:160:0x0386, B:189:0x041f, B:188:0x0414, B:187:0x040c, B:251:0x056f, B:252:0x0572, B:254:0x057a, B:255:0x057f, B:256:0x0593, B:258:0x0597, B:259:0x05ab, B:260:0x05b2, B:262:0x05b6, B:264:0x05ba, B:265:0x05ce, B:266:0x05d6, B:267:0x05d9, B:268:0x05e4, B:270:0x05e8, B:271:0x05fc, B:272:0x0603, B:274:0x0607, B:276:0x060b, B:277:0x061f, B:278:0x0627, B:279:0x062c, B:280:0x062f, B:282:0x0634, B:283:0x0639, B:284:0x064d, B:286:0x0651, B:288:0x0659, B:290:0x0674, B:292:0x0678, B:293:0x0682, B:289:0x066d, B:294:0x06ba, B:295:0x06bd, B:296:0x06c5, B:298:0x06c9, B:300:0x06d1, B:302:0x06ec, B:304:0x06f0, B:305:0x06fa, B:301:0x06e5, B:306:0x0732, B:307:0x0737, B:309:0x073b, B:311:0x073f, B:313:0x0743, B:315:0x0749, B:318:0x0750, B:319:0x0759, B:320:0x0762, B:323:0x0768, B:325:0x076c, B:326:0x0772, B:328:0x0778, B:330:0x0782, B:332:0x0794, B:333:0x0799, B:334:0x079c, B:335:0x07a4, B:336:0x07c7, B:338:0x07d2, B:341:0x07d7, B:343:0x07e5, B:345:0x07ea, B:346:0x07eb, B:348:0x080d, B:351:0x0812, B:354:0x0820, B:361:0x083c, B:362:0x0843, B:358:0x082e, B:363:0x084e, B:391:0x08af, B:396:0x08c2, B:401:0x08d7, B:402:0x08e4, B:403:0x08fc, B:386:0x08a2, B:367:0x085c, B:369:0x0862, B:371:0x0868, B:373:0x0870, B:375:0x087a, B:376:0x0882, B:379:0x0887, B:381:0x0895, B:404:0x08fd, B:408:0x090b, B:410:0x0911, B:412:0x0917, B:414:0x091f, B:416:0x0929, B:417:0x0931, B:420:0x0936, B:422:0x0944, B:423:0x0949, B:425:0x0950, B:427:0x0957, B:428:0x097d, B:430:0x0986, B:431:0x098e, B:432:0x0995, B:434:0x099d, B:436:0x09a9), top: B:445:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:334:0x079c A[Catch: HttpException -> 0x009f, TryCatch #2 {HttpException -> 0x009f, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:10:0x0011, B:12:0x0016, B:14:0x001e, B:15:0x002a, B:18:0x0034, B:21:0x0059, B:43:0x00aa, B:45:0x00b0, B:47:0x00b8, B:49:0x00bc, B:50:0x00dc, B:51:0x00de, B:52:0x00e1, B:54:0x00e8, B:55:0x00ed, B:57:0x00f6, B:60:0x0106, B:62:0x010c, B:64:0x0112, B:65:0x0117, B:58:0x00f7, B:59:0x00fb, B:36:0x0095, B:22:0x005f, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:30:0x007c, B:34:0x008c, B:67:0x011b, B:68:0x0122, B:69:0x0123, B:70:0x0128, B:72:0x0130, B:75:0x013d, B:78:0x014b, B:81:0x0169, B:86:0x017c, B:87:0x0183, B:97:0x01a5, B:98:0x01ac, B:91:0x018a, B:93:0x0193, B:94:0x019c, B:101:0x01b1, B:106:0x01d5, B:110:0x01e9, B:111:0x021c, B:114:0x0229, B:118:0x024b, B:125:0x0288, B:127:0x028c, B:128:0x02bc, B:122:0x027a, B:133:0x02e9, B:135:0x02ed, B:136:0x0302, B:139:0x030f, B:140:0x0332, B:142:0x0350, B:143:0x0353, B:145:0x0357, B:147:0x035f, B:149:0x0367, B:161:0x03a4, B:246:0x0530, B:248:0x053d, B:250:0x0551, B:165:0x03b2, B:167:0x03b6, B:169:0x03bc, B:171:0x03c2, B:173:0x03c8, B:174:0x03cc, B:176:0x03d8, B:178:0x03e0, B:180:0x03ea, B:181:0x03f2, B:184:0x03fe, B:185:0x0401, B:235:0x04f8, B:236:0x0502, B:237:0x050c, B:239:0x0515, B:241:0x051b, B:244:0x0522, B:234:0x04f3, B:222:0x04c9, B:224:0x04d1, B:226:0x04d5, B:228:0x04db, B:230:0x04e1, B:233:0x04ed, B:232:0x04e7, B:151:0x036b, B:153:0x036f, B:154:0x0372, B:156:0x0379, B:157:0x037b, B:159:0x0383, B:190:0x0428, B:193:0x0430, B:194:0x0436, B:196:0x043e, B:198:0x0445, B:199:0x0451, B:200:0x0452, B:202:0x0461, B:203:0x0467, B:205:0x0475, B:206:0x047b, B:208:0x0483, B:209:0x048b, B:210:0x048c, B:211:0x0492, B:213:0x0497, B:215:0x04a5, B:216:0x04b1, B:217:0x04b4, B:220:0x04c1, B:221:0x04c5, B:218:0x04b7, B:219:0x04bc, B:160:0x0386, B:189:0x041f, B:188:0x0414, B:187:0x040c, B:251:0x056f, B:252:0x0572, B:254:0x057a, B:255:0x057f, B:256:0x0593, B:258:0x0597, B:259:0x05ab, B:260:0x05b2, B:262:0x05b6, B:264:0x05ba, B:265:0x05ce, B:266:0x05d6, B:267:0x05d9, B:268:0x05e4, B:270:0x05e8, B:271:0x05fc, B:272:0x0603, B:274:0x0607, B:276:0x060b, B:277:0x061f, B:278:0x0627, B:279:0x062c, B:280:0x062f, B:282:0x0634, B:283:0x0639, B:284:0x064d, B:286:0x0651, B:288:0x0659, B:290:0x0674, B:292:0x0678, B:293:0x0682, B:289:0x066d, B:294:0x06ba, B:295:0x06bd, B:296:0x06c5, B:298:0x06c9, B:300:0x06d1, B:302:0x06ec, B:304:0x06f0, B:305:0x06fa, B:301:0x06e5, B:306:0x0732, B:307:0x0737, B:309:0x073b, B:311:0x073f, B:313:0x0743, B:315:0x0749, B:318:0x0750, B:319:0x0759, B:320:0x0762, B:323:0x0768, B:325:0x076c, B:326:0x0772, B:328:0x0778, B:330:0x0782, B:332:0x0794, B:333:0x0799, B:334:0x079c, B:335:0x07a4, B:336:0x07c7, B:338:0x07d2, B:341:0x07d7, B:343:0x07e5, B:345:0x07ea, B:346:0x07eb, B:348:0x080d, B:351:0x0812, B:354:0x0820, B:361:0x083c, B:362:0x0843, B:358:0x082e, B:363:0x084e, B:391:0x08af, B:396:0x08c2, B:401:0x08d7, B:402:0x08e4, B:403:0x08fc, B:386:0x08a2, B:367:0x085c, B:369:0x0862, B:371:0x0868, B:373:0x0870, B:375:0x087a, B:376:0x0882, B:379:0x0887, B:381:0x0895, B:404:0x08fd, B:408:0x090b, B:410:0x0911, B:412:0x0917, B:414:0x091f, B:416:0x0929, B:417:0x0931, B:420:0x0936, B:422:0x0944, B:423:0x0949, B:425:0x0950, B:427:0x0957, B:428:0x097d, B:430:0x0986, B:431:0x098e, B:432:0x0995, B:434:0x099d, B:436:0x09a9), top: B:445:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0820 A[Catch: HttpException -> 0x009f, TryCatch #2 {HttpException -> 0x009f, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:10:0x0011, B:12:0x0016, B:14:0x001e, B:15:0x002a, B:18:0x0034, B:21:0x0059, B:43:0x00aa, B:45:0x00b0, B:47:0x00b8, B:49:0x00bc, B:50:0x00dc, B:51:0x00de, B:52:0x00e1, B:54:0x00e8, B:55:0x00ed, B:57:0x00f6, B:60:0x0106, B:62:0x010c, B:64:0x0112, B:65:0x0117, B:58:0x00f7, B:59:0x00fb, B:36:0x0095, B:22:0x005f, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:30:0x007c, B:34:0x008c, B:67:0x011b, B:68:0x0122, B:69:0x0123, B:70:0x0128, B:72:0x0130, B:75:0x013d, B:78:0x014b, B:81:0x0169, B:86:0x017c, B:87:0x0183, B:97:0x01a5, B:98:0x01ac, B:91:0x018a, B:93:0x0193, B:94:0x019c, B:101:0x01b1, B:106:0x01d5, B:110:0x01e9, B:111:0x021c, B:114:0x0229, B:118:0x024b, B:125:0x0288, B:127:0x028c, B:128:0x02bc, B:122:0x027a, B:133:0x02e9, B:135:0x02ed, B:136:0x0302, B:139:0x030f, B:140:0x0332, B:142:0x0350, B:143:0x0353, B:145:0x0357, B:147:0x035f, B:149:0x0367, B:161:0x03a4, B:246:0x0530, B:248:0x053d, B:250:0x0551, B:165:0x03b2, B:167:0x03b6, B:169:0x03bc, B:171:0x03c2, B:173:0x03c8, B:174:0x03cc, B:176:0x03d8, B:178:0x03e0, B:180:0x03ea, B:181:0x03f2, B:184:0x03fe, B:185:0x0401, B:235:0x04f8, B:236:0x0502, B:237:0x050c, B:239:0x0515, B:241:0x051b, B:244:0x0522, B:234:0x04f3, B:222:0x04c9, B:224:0x04d1, B:226:0x04d5, B:228:0x04db, B:230:0x04e1, B:233:0x04ed, B:232:0x04e7, B:151:0x036b, B:153:0x036f, B:154:0x0372, B:156:0x0379, B:157:0x037b, B:159:0x0383, B:190:0x0428, B:193:0x0430, B:194:0x0436, B:196:0x043e, B:198:0x0445, B:199:0x0451, B:200:0x0452, B:202:0x0461, B:203:0x0467, B:205:0x0475, B:206:0x047b, B:208:0x0483, B:209:0x048b, B:210:0x048c, B:211:0x0492, B:213:0x0497, B:215:0x04a5, B:216:0x04b1, B:217:0x04b4, B:220:0x04c1, B:221:0x04c5, B:218:0x04b7, B:219:0x04bc, B:160:0x0386, B:189:0x041f, B:188:0x0414, B:187:0x040c, B:251:0x056f, B:252:0x0572, B:254:0x057a, B:255:0x057f, B:256:0x0593, B:258:0x0597, B:259:0x05ab, B:260:0x05b2, B:262:0x05b6, B:264:0x05ba, B:265:0x05ce, B:266:0x05d6, B:267:0x05d9, B:268:0x05e4, B:270:0x05e8, B:271:0x05fc, B:272:0x0603, B:274:0x0607, B:276:0x060b, B:277:0x061f, B:278:0x0627, B:279:0x062c, B:280:0x062f, B:282:0x0634, B:283:0x0639, B:284:0x064d, B:286:0x0651, B:288:0x0659, B:290:0x0674, B:292:0x0678, B:293:0x0682, B:289:0x066d, B:294:0x06ba, B:295:0x06bd, B:296:0x06c5, B:298:0x06c9, B:300:0x06d1, B:302:0x06ec, B:304:0x06f0, B:305:0x06fa, B:301:0x06e5, B:306:0x0732, B:307:0x0737, B:309:0x073b, B:311:0x073f, B:313:0x0743, B:315:0x0749, B:318:0x0750, B:319:0x0759, B:320:0x0762, B:323:0x0768, B:325:0x076c, B:326:0x0772, B:328:0x0778, B:330:0x0782, B:332:0x0794, B:333:0x0799, B:334:0x079c, B:335:0x07a4, B:336:0x07c7, B:338:0x07d2, B:341:0x07d7, B:343:0x07e5, B:345:0x07ea, B:346:0x07eb, B:348:0x080d, B:351:0x0812, B:354:0x0820, B:361:0x083c, B:362:0x0843, B:358:0x082e, B:363:0x084e, B:391:0x08af, B:396:0x08c2, B:401:0x08d7, B:402:0x08e4, B:403:0x08fc, B:386:0x08a2, B:367:0x085c, B:369:0x0862, B:371:0x0868, B:373:0x0870, B:375:0x087a, B:376:0x0882, B:379:0x0887, B:381:0x0895, B:404:0x08fd, B:408:0x090b, B:410:0x0911, B:412:0x0917, B:414:0x091f, B:416:0x0929, B:417:0x0931, B:420:0x0936, B:422:0x0944, B:423:0x0949, B:425:0x0950, B:427:0x0957, B:428:0x097d, B:430:0x0986, B:431:0x098e, B:432:0x0995, B:434:0x099d, B:436:0x09a9), top: B:445:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x084e A[Catch: HttpException -> 0x009f, TryCatch #2 {HttpException -> 0x009f, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:10:0x0011, B:12:0x0016, B:14:0x001e, B:15:0x002a, B:18:0x0034, B:21:0x0059, B:43:0x00aa, B:45:0x00b0, B:47:0x00b8, B:49:0x00bc, B:50:0x00dc, B:51:0x00de, B:52:0x00e1, B:54:0x00e8, B:55:0x00ed, B:57:0x00f6, B:60:0x0106, B:62:0x010c, B:64:0x0112, B:65:0x0117, B:58:0x00f7, B:59:0x00fb, B:36:0x0095, B:22:0x005f, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:30:0x007c, B:34:0x008c, B:67:0x011b, B:68:0x0122, B:69:0x0123, B:70:0x0128, B:72:0x0130, B:75:0x013d, B:78:0x014b, B:81:0x0169, B:86:0x017c, B:87:0x0183, B:97:0x01a5, B:98:0x01ac, B:91:0x018a, B:93:0x0193, B:94:0x019c, B:101:0x01b1, B:106:0x01d5, B:110:0x01e9, B:111:0x021c, B:114:0x0229, B:118:0x024b, B:125:0x0288, B:127:0x028c, B:128:0x02bc, B:122:0x027a, B:133:0x02e9, B:135:0x02ed, B:136:0x0302, B:139:0x030f, B:140:0x0332, B:142:0x0350, B:143:0x0353, B:145:0x0357, B:147:0x035f, B:149:0x0367, B:161:0x03a4, B:246:0x0530, B:248:0x053d, B:250:0x0551, B:165:0x03b2, B:167:0x03b6, B:169:0x03bc, B:171:0x03c2, B:173:0x03c8, B:174:0x03cc, B:176:0x03d8, B:178:0x03e0, B:180:0x03ea, B:181:0x03f2, B:184:0x03fe, B:185:0x0401, B:235:0x04f8, B:236:0x0502, B:237:0x050c, B:239:0x0515, B:241:0x051b, B:244:0x0522, B:234:0x04f3, B:222:0x04c9, B:224:0x04d1, B:226:0x04d5, B:228:0x04db, B:230:0x04e1, B:233:0x04ed, B:232:0x04e7, B:151:0x036b, B:153:0x036f, B:154:0x0372, B:156:0x0379, B:157:0x037b, B:159:0x0383, B:190:0x0428, B:193:0x0430, B:194:0x0436, B:196:0x043e, B:198:0x0445, B:199:0x0451, B:200:0x0452, B:202:0x0461, B:203:0x0467, B:205:0x0475, B:206:0x047b, B:208:0x0483, B:209:0x048b, B:210:0x048c, B:211:0x0492, B:213:0x0497, B:215:0x04a5, B:216:0x04b1, B:217:0x04b4, B:220:0x04c1, B:221:0x04c5, B:218:0x04b7, B:219:0x04bc, B:160:0x0386, B:189:0x041f, B:188:0x0414, B:187:0x040c, B:251:0x056f, B:252:0x0572, B:254:0x057a, B:255:0x057f, B:256:0x0593, B:258:0x0597, B:259:0x05ab, B:260:0x05b2, B:262:0x05b6, B:264:0x05ba, B:265:0x05ce, B:266:0x05d6, B:267:0x05d9, B:268:0x05e4, B:270:0x05e8, B:271:0x05fc, B:272:0x0603, B:274:0x0607, B:276:0x060b, B:277:0x061f, B:278:0x0627, B:279:0x062c, B:280:0x062f, B:282:0x0634, B:283:0x0639, B:284:0x064d, B:286:0x0651, B:288:0x0659, B:290:0x0674, B:292:0x0678, B:293:0x0682, B:289:0x066d, B:294:0x06ba, B:295:0x06bd, B:296:0x06c5, B:298:0x06c9, B:300:0x06d1, B:302:0x06ec, B:304:0x06f0, B:305:0x06fa, B:301:0x06e5, B:306:0x0732, B:307:0x0737, B:309:0x073b, B:311:0x073f, B:313:0x0743, B:315:0x0749, B:318:0x0750, B:319:0x0759, B:320:0x0762, B:323:0x0768, B:325:0x076c, B:326:0x0772, B:328:0x0778, B:330:0x0782, B:332:0x0794, B:333:0x0799, B:334:0x079c, B:335:0x07a4, B:336:0x07c7, B:338:0x07d2, B:341:0x07d7, B:343:0x07e5, B:345:0x07ea, B:346:0x07eb, B:348:0x080d, B:351:0x0812, B:354:0x0820, B:361:0x083c, B:362:0x0843, B:358:0x082e, B:363:0x084e, B:391:0x08af, B:396:0x08c2, B:401:0x08d7, B:402:0x08e4, B:403:0x08fc, B:386:0x08a2, B:367:0x085c, B:369:0x0862, B:371:0x0868, B:373:0x0870, B:375:0x087a, B:376:0x0882, B:379:0x0887, B:381:0x0895, B:404:0x08fd, B:408:0x090b, B:410:0x0911, B:412:0x0917, B:414:0x091f, B:416:0x0929, B:417:0x0931, B:420:0x0936, B:422:0x0944, B:423:0x0949, B:425:0x0950, B:427:0x0957, B:428:0x097d, B:430:0x0986, B:431:0x098e, B:432:0x0995, B:434:0x099d, B:436:0x09a9), top: B:445:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:404:0x08fd A[Catch: HttpException -> 0x009f, TryCatch #2 {HttpException -> 0x009f, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:10:0x0011, B:12:0x0016, B:14:0x001e, B:15:0x002a, B:18:0x0034, B:21:0x0059, B:43:0x00aa, B:45:0x00b0, B:47:0x00b8, B:49:0x00bc, B:50:0x00dc, B:51:0x00de, B:52:0x00e1, B:54:0x00e8, B:55:0x00ed, B:57:0x00f6, B:60:0x0106, B:62:0x010c, B:64:0x0112, B:65:0x0117, B:58:0x00f7, B:59:0x00fb, B:36:0x0095, B:22:0x005f, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:30:0x007c, B:34:0x008c, B:67:0x011b, B:68:0x0122, B:69:0x0123, B:70:0x0128, B:72:0x0130, B:75:0x013d, B:78:0x014b, B:81:0x0169, B:86:0x017c, B:87:0x0183, B:97:0x01a5, B:98:0x01ac, B:91:0x018a, B:93:0x0193, B:94:0x019c, B:101:0x01b1, B:106:0x01d5, B:110:0x01e9, B:111:0x021c, B:114:0x0229, B:118:0x024b, B:125:0x0288, B:127:0x028c, B:128:0x02bc, B:122:0x027a, B:133:0x02e9, B:135:0x02ed, B:136:0x0302, B:139:0x030f, B:140:0x0332, B:142:0x0350, B:143:0x0353, B:145:0x0357, B:147:0x035f, B:149:0x0367, B:161:0x03a4, B:246:0x0530, B:248:0x053d, B:250:0x0551, B:165:0x03b2, B:167:0x03b6, B:169:0x03bc, B:171:0x03c2, B:173:0x03c8, B:174:0x03cc, B:176:0x03d8, B:178:0x03e0, B:180:0x03ea, B:181:0x03f2, B:184:0x03fe, B:185:0x0401, B:235:0x04f8, B:236:0x0502, B:237:0x050c, B:239:0x0515, B:241:0x051b, B:244:0x0522, B:234:0x04f3, B:222:0x04c9, B:224:0x04d1, B:226:0x04d5, B:228:0x04db, B:230:0x04e1, B:233:0x04ed, B:232:0x04e7, B:151:0x036b, B:153:0x036f, B:154:0x0372, B:156:0x0379, B:157:0x037b, B:159:0x0383, B:190:0x0428, B:193:0x0430, B:194:0x0436, B:196:0x043e, B:198:0x0445, B:199:0x0451, B:200:0x0452, B:202:0x0461, B:203:0x0467, B:205:0x0475, B:206:0x047b, B:208:0x0483, B:209:0x048b, B:210:0x048c, B:211:0x0492, B:213:0x0497, B:215:0x04a5, B:216:0x04b1, B:217:0x04b4, B:220:0x04c1, B:221:0x04c5, B:218:0x04b7, B:219:0x04bc, B:160:0x0386, B:189:0x041f, B:188:0x0414, B:187:0x040c, B:251:0x056f, B:252:0x0572, B:254:0x057a, B:255:0x057f, B:256:0x0593, B:258:0x0597, B:259:0x05ab, B:260:0x05b2, B:262:0x05b6, B:264:0x05ba, B:265:0x05ce, B:266:0x05d6, B:267:0x05d9, B:268:0x05e4, B:270:0x05e8, B:271:0x05fc, B:272:0x0603, B:274:0x0607, B:276:0x060b, B:277:0x061f, B:278:0x0627, B:279:0x062c, B:280:0x062f, B:282:0x0634, B:283:0x0639, B:284:0x064d, B:286:0x0651, B:288:0x0659, B:290:0x0674, B:292:0x0678, B:293:0x0682, B:289:0x066d, B:294:0x06ba, B:295:0x06bd, B:296:0x06c5, B:298:0x06c9, B:300:0x06d1, B:302:0x06ec, B:304:0x06f0, B:305:0x06fa, B:301:0x06e5, B:306:0x0732, B:307:0x0737, B:309:0x073b, B:311:0x073f, B:313:0x0743, B:315:0x0749, B:318:0x0750, B:319:0x0759, B:320:0x0762, B:323:0x0768, B:325:0x076c, B:326:0x0772, B:328:0x0778, B:330:0x0782, B:332:0x0794, B:333:0x0799, B:334:0x079c, B:335:0x07a4, B:336:0x07c7, B:338:0x07d2, B:341:0x07d7, B:343:0x07e5, B:345:0x07ea, B:346:0x07eb, B:348:0x080d, B:351:0x0812, B:354:0x0820, B:361:0x083c, B:362:0x0843, B:358:0x082e, B:363:0x084e, B:391:0x08af, B:396:0x08c2, B:401:0x08d7, B:402:0x08e4, B:403:0x08fc, B:386:0x08a2, B:367:0x085c, B:369:0x0862, B:371:0x0868, B:373:0x0870, B:375:0x087a, B:376:0x0882, B:379:0x0887, B:381:0x0895, B:404:0x08fd, B:408:0x090b, B:410:0x0911, B:412:0x0917, B:414:0x091f, B:416:0x0929, B:417:0x0931, B:420:0x0936, B:422:0x0944, B:423:0x0949, B:425:0x0950, B:427:0x0957, B:428:0x097d, B:430:0x0986, B:431:0x098e, B:432:0x0995, B:434:0x099d, B:436:0x09a9), top: B:445:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0949 A[Catch: HttpException -> 0x009f, TryCatch #2 {HttpException -> 0x009f, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:10:0x0011, B:12:0x0016, B:14:0x001e, B:15:0x002a, B:18:0x0034, B:21:0x0059, B:43:0x00aa, B:45:0x00b0, B:47:0x00b8, B:49:0x00bc, B:50:0x00dc, B:51:0x00de, B:52:0x00e1, B:54:0x00e8, B:55:0x00ed, B:57:0x00f6, B:60:0x0106, B:62:0x010c, B:64:0x0112, B:65:0x0117, B:58:0x00f7, B:59:0x00fb, B:36:0x0095, B:22:0x005f, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:30:0x007c, B:34:0x008c, B:67:0x011b, B:68:0x0122, B:69:0x0123, B:70:0x0128, B:72:0x0130, B:75:0x013d, B:78:0x014b, B:81:0x0169, B:86:0x017c, B:87:0x0183, B:97:0x01a5, B:98:0x01ac, B:91:0x018a, B:93:0x0193, B:94:0x019c, B:101:0x01b1, B:106:0x01d5, B:110:0x01e9, B:111:0x021c, B:114:0x0229, B:118:0x024b, B:125:0x0288, B:127:0x028c, B:128:0x02bc, B:122:0x027a, B:133:0x02e9, B:135:0x02ed, B:136:0x0302, B:139:0x030f, B:140:0x0332, B:142:0x0350, B:143:0x0353, B:145:0x0357, B:147:0x035f, B:149:0x0367, B:161:0x03a4, B:246:0x0530, B:248:0x053d, B:250:0x0551, B:165:0x03b2, B:167:0x03b6, B:169:0x03bc, B:171:0x03c2, B:173:0x03c8, B:174:0x03cc, B:176:0x03d8, B:178:0x03e0, B:180:0x03ea, B:181:0x03f2, B:184:0x03fe, B:185:0x0401, B:235:0x04f8, B:236:0x0502, B:237:0x050c, B:239:0x0515, B:241:0x051b, B:244:0x0522, B:234:0x04f3, B:222:0x04c9, B:224:0x04d1, B:226:0x04d5, B:228:0x04db, B:230:0x04e1, B:233:0x04ed, B:232:0x04e7, B:151:0x036b, B:153:0x036f, B:154:0x0372, B:156:0x0379, B:157:0x037b, B:159:0x0383, B:190:0x0428, B:193:0x0430, B:194:0x0436, B:196:0x043e, B:198:0x0445, B:199:0x0451, B:200:0x0452, B:202:0x0461, B:203:0x0467, B:205:0x0475, B:206:0x047b, B:208:0x0483, B:209:0x048b, B:210:0x048c, B:211:0x0492, B:213:0x0497, B:215:0x04a5, B:216:0x04b1, B:217:0x04b4, B:220:0x04c1, B:221:0x04c5, B:218:0x04b7, B:219:0x04bc, B:160:0x0386, B:189:0x041f, B:188:0x0414, B:187:0x040c, B:251:0x056f, B:252:0x0572, B:254:0x057a, B:255:0x057f, B:256:0x0593, B:258:0x0597, B:259:0x05ab, B:260:0x05b2, B:262:0x05b6, B:264:0x05ba, B:265:0x05ce, B:266:0x05d6, B:267:0x05d9, B:268:0x05e4, B:270:0x05e8, B:271:0x05fc, B:272:0x0603, B:274:0x0607, B:276:0x060b, B:277:0x061f, B:278:0x0627, B:279:0x062c, B:280:0x062f, B:282:0x0634, B:283:0x0639, B:284:0x064d, B:286:0x0651, B:288:0x0659, B:290:0x0674, B:292:0x0678, B:293:0x0682, B:289:0x066d, B:294:0x06ba, B:295:0x06bd, B:296:0x06c5, B:298:0x06c9, B:300:0x06d1, B:302:0x06ec, B:304:0x06f0, B:305:0x06fa, B:301:0x06e5, B:306:0x0732, B:307:0x0737, B:309:0x073b, B:311:0x073f, B:313:0x0743, B:315:0x0749, B:318:0x0750, B:319:0x0759, B:320:0x0762, B:323:0x0768, B:325:0x076c, B:326:0x0772, B:328:0x0778, B:330:0x0782, B:332:0x0794, B:333:0x0799, B:334:0x079c, B:335:0x07a4, B:336:0x07c7, B:338:0x07d2, B:341:0x07d7, B:343:0x07e5, B:345:0x07ea, B:346:0x07eb, B:348:0x080d, B:351:0x0812, B:354:0x0820, B:361:0x083c, B:362:0x0843, B:358:0x082e, B:363:0x084e, B:391:0x08af, B:396:0x08c2, B:401:0x08d7, B:402:0x08e4, B:403:0x08fc, B:386:0x08a2, B:367:0x085c, B:369:0x0862, B:371:0x0868, B:373:0x0870, B:375:0x087a, B:376:0x0882, B:379:0x0887, B:381:0x0895, B:404:0x08fd, B:408:0x090b, B:410:0x0911, B:412:0x0917, B:414:0x091f, B:416:0x0929, B:417:0x0931, B:420:0x0936, B:422:0x0944, B:423:0x0949, B:425:0x0950, B:427:0x0957, B:428:0x097d, B:430:0x0986, B:431:0x098e, B:432:0x0995, B:434:0x099d, B:436:0x09a9), top: B:445:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:428:0x097d A[Catch: HttpException -> 0x009f, TryCatch #2 {HttpException -> 0x009f, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:10:0x0011, B:12:0x0016, B:14:0x001e, B:15:0x002a, B:18:0x0034, B:21:0x0059, B:43:0x00aa, B:45:0x00b0, B:47:0x00b8, B:49:0x00bc, B:50:0x00dc, B:51:0x00de, B:52:0x00e1, B:54:0x00e8, B:55:0x00ed, B:57:0x00f6, B:60:0x0106, B:62:0x010c, B:64:0x0112, B:65:0x0117, B:58:0x00f7, B:59:0x00fb, B:36:0x0095, B:22:0x005f, B:23:0x006a, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:30:0x007c, B:34:0x008c, B:67:0x011b, B:68:0x0122, B:69:0x0123, B:70:0x0128, B:72:0x0130, B:75:0x013d, B:78:0x014b, B:81:0x0169, B:86:0x017c, B:87:0x0183, B:97:0x01a5, B:98:0x01ac, B:91:0x018a, B:93:0x0193, B:94:0x019c, B:101:0x01b1, B:106:0x01d5, B:110:0x01e9, B:111:0x021c, B:114:0x0229, B:118:0x024b, B:125:0x0288, B:127:0x028c, B:128:0x02bc, B:122:0x027a, B:133:0x02e9, B:135:0x02ed, B:136:0x0302, B:139:0x030f, B:140:0x0332, B:142:0x0350, B:143:0x0353, B:145:0x0357, B:147:0x035f, B:149:0x0367, B:161:0x03a4, B:246:0x0530, B:248:0x053d, B:250:0x0551, B:165:0x03b2, B:167:0x03b6, B:169:0x03bc, B:171:0x03c2, B:173:0x03c8, B:174:0x03cc, B:176:0x03d8, B:178:0x03e0, B:180:0x03ea, B:181:0x03f2, B:184:0x03fe, B:185:0x0401, B:235:0x04f8, B:236:0x0502, B:237:0x050c, B:239:0x0515, B:241:0x051b, B:244:0x0522, B:234:0x04f3, B:222:0x04c9, B:224:0x04d1, B:226:0x04d5, B:228:0x04db, B:230:0x04e1, B:233:0x04ed, B:232:0x04e7, B:151:0x036b, B:153:0x036f, B:154:0x0372, B:156:0x0379, B:157:0x037b, B:159:0x0383, B:190:0x0428, B:193:0x0430, B:194:0x0436, B:196:0x043e, B:198:0x0445, B:199:0x0451, B:200:0x0452, B:202:0x0461, B:203:0x0467, B:205:0x0475, B:206:0x047b, B:208:0x0483, B:209:0x048b, B:210:0x048c, B:211:0x0492, B:213:0x0497, B:215:0x04a5, B:216:0x04b1, B:217:0x04b4, B:220:0x04c1, B:221:0x04c5, B:218:0x04b7, B:219:0x04bc, B:160:0x0386, B:189:0x041f, B:188:0x0414, B:187:0x040c, B:251:0x056f, B:252:0x0572, B:254:0x057a, B:255:0x057f, B:256:0x0593, B:258:0x0597, B:259:0x05ab, B:260:0x05b2, B:262:0x05b6, B:264:0x05ba, B:265:0x05ce, B:266:0x05d6, B:267:0x05d9, B:268:0x05e4, B:270:0x05e8, B:271:0x05fc, B:272:0x0603, B:274:0x0607, B:276:0x060b, B:277:0x061f, B:278:0x0627, B:279:0x062c, B:280:0x062f, B:282:0x0634, B:283:0x0639, B:284:0x064d, B:286:0x0651, B:288:0x0659, B:290:0x0674, B:292:0x0678, B:293:0x0682, B:289:0x066d, B:294:0x06ba, B:295:0x06bd, B:296:0x06c5, B:298:0x06c9, B:300:0x06d1, B:302:0x06ec, B:304:0x06f0, B:305:0x06fa, B:301:0x06e5, B:306:0x0732, B:307:0x0737, B:309:0x073b, B:311:0x073f, B:313:0x0743, B:315:0x0749, B:318:0x0750, B:319:0x0759, B:320:0x0762, B:323:0x0768, B:325:0x076c, B:326:0x0772, B:328:0x0778, B:330:0x0782, B:332:0x0794, B:333:0x0799, B:334:0x079c, B:335:0x07a4, B:336:0x07c7, B:338:0x07d2, B:341:0x07d7, B:343:0x07e5, B:345:0x07ea, B:346:0x07eb, B:348:0x080d, B:351:0x0812, B:354:0x0820, B:361:0x083c, B:362:0x0843, B:358:0x082e, B:363:0x084e, B:391:0x08af, B:396:0x08c2, B:401:0x08d7, B:402:0x08e4, B:403:0x08fc, B:386:0x08a2, B:367:0x085c, B:369:0x0862, B:371:0x0868, B:373:0x0870, B:375:0x087a, B:376:0x0882, B:379:0x0887, B:381:0x0895, B:404:0x08fd, B:408:0x090b, B:410:0x0911, B:412:0x0917, B:414:0x091f, B:416:0x0929, B:417:0x0931, B:420:0x0936, B:422:0x0944, B:423:0x0949, B:425:0x0950, B:427:0x0957, B:428:0x097d, B:430:0x0986, B:431:0x098e, B:432:0x0995, B:434:0x099d, B:436:0x09a9), top: B:445:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x09b9  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x07a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:509:0x07c7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int parseNext() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpParser.parseNext():int");
    }

    protected int fill() throws IOException {
        if (this.g == null) {
            this.g = getHeaderBuffer();
        }
        if (this._state > 0 && this.g == this.e && this.e != null && !this.e.hasContent() && this.f != null && this.f.hasContent()) {
            this.g = this.f;
            return this.g.length();
        }
        if (this.g == this.e && this._state > 0 && this.e.length() == 0 && ((this.m || this._contentLength - this._contentPosition > this.e.capacity()) && (this.f != null || this.c != null))) {
            if (this.f == null) {
                this.f = this.c.getBuffer();
            }
            this.g = this.f;
        }
        if (this.d != null) {
            if (this.g == this.f || this._state > 0) {
                this.g.compact();
            }
            if (this.g.space() == 0) {
                a.warn("HttpParser Full for {} ", this.d);
                this.g.clear();
                throw new HttpException(HttpStatus.REQUEST_ENTITY_TOO_LARGE_413, "FULL " + (this.g == this.f ? "body" : "head"));
            }
            try {
                return this.d.fill(this.g);
            } catch (IOException e) {
                a.debug(e);
                if (e instanceof EofException) {
                    throw e;
                }
                throw new EofException(e);
            }
        }
        return -1;
    }

    @Override // org.eclipse.jetty.http.Parser
    public void reset() {
        int i;
        this._contentView.setGetIndex(this._contentView.putIndex());
        if (this.n) {
            i = -14;
        } else {
            i = this.d.isInputShutdown() ? 0 : 7;
        }
        this._state = i;
        this._contentLength = -3L;
        this._contentPosition = 0L;
        this._length = 0;
        this.l = 0;
        if (this._eol == 13 && this.g != null && this.g.hasContent() && this.g.peek() == 10) {
            this._eol = this.g.get();
        }
        if (this.f != null && this.f.hasContent()) {
            if (this.e == null) {
                getHeaderBuffer();
            } else {
                this.e.setMarkIndex(-1);
                this.e.compact();
            }
            int iSpace = this.e.space();
            if (iSpace > this.f.length()) {
                iSpace = this.f.length();
            }
            this.f.peek(this.f.getIndex(), iSpace);
            this.f.skip(this.e.put(this.f.peek(this.f.getIndex(), iSpace)));
        }
        if (this.e != null) {
            this.e.setMarkIndex(-1);
            this.e.compact();
        }
        if (this.f != null) {
            this.f.setMarkIndex(-1);
        }
        this.g = this.e;
        returnBuffers();
    }

    @Override // org.eclipse.jetty.http.Parser
    public void returnBuffers() {
        if (this.f != null && !this.f.hasContent() && this.f.markIndex() == -1 && this.c != null) {
            if (this.g == this.f) {
                this.g = this.e;
            }
            if (this.c != null) {
                this.c.returnBuffer(this.f);
            }
            this.f = null;
        }
        if (this.e != null && !this.e.hasContent() && this.e.markIndex() == -1 && this.c != null) {
            if (this.g == this.e) {
                this.g = null;
            }
            this.c.returnBuffer(this.e);
            this.e = null;
        }
    }

    public void setState(int i) {
        this._state = i;
        this._contentLength = -3L;
    }

    public String toString(Buffer buffer) {
        return "state=" + this._state + " length=" + this._length + " buf=" + buffer.hashCode();
    }

    public String toString() {
        return String.format("%s{s=%d,l=%d,c=%d}", getClass().getSimpleName(), Integer.valueOf(this._state), Integer.valueOf(this._length), Long.valueOf(this._contentLength));
    }

    public Buffer getHeaderBuffer() {
        if (this.e == null) {
            this.e = this.c.getHeader();
            this.i.update(this.e);
            this.j.update(this.e);
        }
        return this.e;
    }

    public Buffer getBodyBuffer() {
        return this.f;
    }

    public void setForceContentBuffer(boolean z) {
        this.m = z;
    }

    public Buffer blockForContent(long j) throws IOException {
        if (this._contentView.length() > 0) {
            return this._contentView;
        }
        if (getState() <= 0 || isState(7)) {
            return null;
        }
        try {
            parseNext();
            while (this._contentView.length() == 0 && !isState(0) && !isState(7) && this.d != null && this.d.isOpen()) {
                if (!this.d.isBlocking()) {
                    if (parseNext() > 0) {
                        continue;
                    } else if (!this.d.blockReadable(j)) {
                        this.d.close();
                        throw new EofException("timeout");
                    }
                }
                parseNext();
            }
            if (this._contentView.length() > 0) {
                return this._contentView;
            }
            return null;
        } catch (IOException e) {
            this.d.close();
            throw e;
        }
    }

    public int available() throws IOException {
        if (this._contentView != null && this._contentView.length() > 0) {
            return this._contentView.length();
        }
        if (this.d.isBlocking()) {
            if (this._state <= 0 || !(this.d instanceof StreamEndPoint)) {
                return 0;
            }
            return ((StreamEndPoint) this.d).getInputStream().available() > 0 ? 1 : 0;
        }
        parseNext();
        if (this._contentView != null) {
            return this._contentView.length();
        }
        return 0;
    }

    public static abstract class EventHandler {
        public abstract void content(Buffer buffer);

        public abstract void startRequest(Buffer buffer, Buffer buffer2, Buffer buffer3);

        public abstract void startResponse(Buffer buffer, int i, Buffer buffer2);

        public void headerComplete() {
        }

        public void messageComplete(long j) {
        }

        public void parsedHeader(Buffer buffer, Buffer buffer2) {
        }

        public void earlyEOF() {
        }
    }
}
