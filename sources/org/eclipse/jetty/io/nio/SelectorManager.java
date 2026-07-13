package org.eclipse.jetty.io.nio;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import java.io.IOException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.Dumpable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes.dex */
public abstract class SelectorManager extends AbstractLifeCycle implements Dumpable {
    public static final Logger LOG = Log.getLogger("org.eclipse.jetty.io.nio");
    private static final int a = Integer.getInteger("org.eclipse.jetty.io.nio.MONITOR_PERIOD", CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT).intValue();
    private static final int b = Integer.getInteger("org.eclipse.jetty.io.nio.MAX_SELECTS", 100000).intValue();
    private static final int c = Integer.getInteger("org.eclipse.jetty.io.nio.BUSY_PAUSE", 50).intValue();
    private static final int d = Integer.getInteger("org.eclipse.jetty.io.nio.IDLE_TICK", HttpStatus.BAD_REQUEST_400).intValue();
    private int e;
    private int f;
    private long g;
    private SelectSet[] h;
    private int i = 1;
    private volatile int j = 0;
    private boolean k = true;
    private int l = 0;

    interface a extends Runnable {
    }

    public abstract boolean dispatch(Runnable runnable);

    public abstract void endPointClosed(SelectChannelEndPoint selectChannelEndPoint);

    public abstract void endPointOpened(SelectChannelEndPoint selectChannelEndPoint);

    public abstract void endPointUpgraded(ConnectedEndPoint connectedEndPoint, Connection connection);

    public abstract AsyncConnection newConnection(SocketChannel socketChannel, AsyncEndPoint asyncEndPoint, Object obj);

    public abstract SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectSet selectSet, SelectionKey selectionKey);

    public void setMaxIdleTime(long j) {
        this.e = (int) j;
    }

    public void setSelectSets(int i) {
        long j = this.g * ((long) this.i);
        this.i = i;
        this.g = j / ((long) this.i);
    }

    public long getMaxIdleTime() {
        return this.e;
    }

    public int getSelectSets() {
        return this.i;
    }

    public SelectSet getSelectSet(int i) {
        return this.h[i];
    }

    public void register(SocketChannel socketChannel, Object obj) {
        int i = this.j;
        this.j = i + 1;
        if (i < 0) {
            i = -i;
        }
        int i2 = i % this.i;
        SelectSet[] selectSetArr = this.h;
        if (selectSetArr != null) {
            SelectSet selectSet = selectSetArr[i2];
            selectSet.addChange(socketChannel, obj);
            selectSet.wakeup();
        }
    }

    public void register(SocketChannel socketChannel) {
        int i = this.j;
        this.j = i + 1;
        if (i < 0) {
            i = -i;
        }
        int i2 = i % this.i;
        SelectSet[] selectSetArr = this.h;
        if (selectSetArr != null) {
            SelectSet selectSet = selectSetArr[i2];
            selectSet.addChange(socketChannel);
            selectSet.wakeup();
        }
    }

    public void register(ServerSocketChannel serverSocketChannel) {
        int i = this.j;
        this.j = i + 1;
        if (i < 0) {
            i = -i;
        }
        SelectSet selectSet = this.h[i % this.i];
        selectSet.addChange(serverSocketChannel);
        selectSet.wakeup();
    }

    public int getSelectorPriorityDelta() {
        return this.l;
    }

    public void setSelectorPriorityDelta(int i) {
        this.l = i;
    }

    public long getLowResourcesConnections() {
        return this.g * ((long) this.i);
    }

    public void setLowResourcesConnections(long j) {
        this.g = ((((long) this.i) + j) - 1) / ((long) this.i);
    }

    public long getLowResourcesMaxIdleTime() {
        return this.f;
    }

    public void setLowResourcesMaxIdleTime(long j) {
        this.f = (int) j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        this.h = new SelectSet[this.i];
        for (int i = 0; i < this.h.length; i++) {
            this.h[i] = new SelectSet(i);
        }
        super.doStart();
        for (final int i2 = 0; i2 < getSelectSets(); i2++) {
            if (!dispatch(new Runnable() { // from class: org.eclipse.jetty.io.nio.SelectorManager.1
                @Override // java.lang.Runnable
                public void run() {
                    String name = Thread.currentThread().getName();
                    int priority = Thread.currentThread().getPriority();
                    try {
                        SelectSet[] selectSetArr = SelectorManager.this.h;
                        if (selectSetArr != null) {
                            SelectSet selectSet = selectSetArr[i2];
                            Thread.currentThread().setName(name + " Selector" + i2);
                            if (SelectorManager.this.getSelectorPriorityDelta() != 0) {
                                Thread.currentThread().setPriority(Thread.currentThread().getPriority() + SelectorManager.this.getSelectorPriorityDelta());
                            }
                            SelectorManager.LOG.debug("Starting {} on {}", Thread.currentThread(), this);
                            while (SelectorManager.this.isRunning()) {
                                try {
                                    selectSet.doSelect();
                                } catch (IOException e) {
                                    SelectorManager.LOG.ignore(e);
                                } catch (Exception e2) {
                                    SelectorManager.LOG.warn(e2);
                                }
                            }
                            SelectorManager.LOG.debug("Stopped {} on {}", Thread.currentThread(), this);
                            Thread.currentThread().setName(name);
                            if (SelectorManager.this.getSelectorPriorityDelta() != 0) {
                                Thread.currentThread().setPriority(priority);
                                return;
                            }
                            return;
                        }
                        SelectorManager.LOG.debug("Stopped {} on {}", Thread.currentThread(), this);
                        Thread.currentThread().setName(name);
                        if (SelectorManager.this.getSelectorPriorityDelta() != 0) {
                            Thread.currentThread().setPriority(priority);
                        }
                    } catch (Throwable th) {
                        SelectorManager.LOG.debug("Stopped {} on {}", Thread.currentThread(), this);
                        Thread.currentThread().setName(name);
                        if (SelectorManager.this.getSelectorPriorityDelta() != 0) {
                            Thread.currentThread().setPriority(priority);
                        }
                        throw th;
                    }
                }
            })) {
                throw new IllegalStateException("!Selecting");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        SelectSet[] selectSetArr = this.h;
        this.h = null;
        if (selectSetArr != null) {
            for (SelectSet selectSet : selectSetArr) {
                if (selectSet != null) {
                    selectSet.b();
                }
            }
        }
        super.doStop();
    }

    public void connectionFailed(SocketChannel socketChannel, Throwable th, Object obj) {
        LOG.warn(th + "," + socketChannel + "," + obj, new Object[0]);
        LOG.debug(th);
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public String dump() {
        return AggregateLifeCycle.dump(this);
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) throws IOException {
        AggregateLifeCycle.dumpObject(appendable, this);
        AggregateLifeCycle.dump(appendable, str, TypeUtil.asList(this.h));
    }

    public class SelectSet implements Dumpable {
        private final int b;
        private volatile Selector e;
        private volatile Thread f;
        private int g;
        private long h;
        private boolean i;
        private boolean j;
        private final ConcurrentLinkedQueue<Object> d = new ConcurrentLinkedQueue<>();
        private ConcurrentMap<SelectChannelEndPoint, Object> l = new ConcurrentHashMap();
        private volatile long k = System.currentTimeMillis();
        private final Timeout c = new Timeout(this);

        SelectSet(int i) {
            this.b = i;
            this.c.setDuration(0L);
            this.e = Selector.open();
            this.h = System.currentTimeMillis() + ((long) SelectorManager.a);
        }

        public void addChange(Object obj) {
            this.d.add(obj);
        }

        public void addChange(SelectableChannel selectableChannel, Object obj) {
            if (obj == null) {
                addChange(selectableChannel);
            } else if (obj instanceof EndPoint) {
                addChange(obj);
            } else {
                addChange(new b(selectableChannel, obj));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:107:0x0189, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x018a, code lost:
        
            org.eclipse.jetty.io.nio.SelectorManager.LOG.ignore(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:196:0x0301, code lost:
        
            r10 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00f2, code lost:
        
            r4 = r12.selectNow();
            r2 = java.lang.System.currentTimeMillis();
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x00fa, code lost:
        
            if (r4 != 0) goto L102;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0104, code lost:
        
            if (r12.selectedKeys().isEmpty() == false) goto L102;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0108, code lost:
        
            if (r14.i == false) goto L196;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x010a, code lost:
        
            java.lang.Thread.sleep(org.eclipse.jetty.io.nio.SelectorManager.c);
         */
        /* JADX WARN: Removed duplicated region for block: B:113:0x01a0 A[Catch: ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, all -> 0x00de, Merged into TryCatch #15 {all -> 0x00de, ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, blocks: (B:3:0x0003, B:7:0x0010, B:8:0x0016, B:10:0x001a, B:12:0x0022, B:14:0x0026, B:15:0x002c, B:39:0x0082, B:41:0x008a, B:43:0x0091, B:46:0x0096, B:73:0x00ec, B:17:0x0031, B:19:0x0035, B:20:0x0039, B:22:0x003f, B:24:0x0049, B:34:0x0075, B:36:0x007b, B:51:0x00a6, B:53:0x00aa, B:55:0x00ae, B:59:0x00c3, B:61:0x00c7, B:64:0x00d1, B:66:0x00d5, B:71:0x00e2, B:72:0x00eb, B:27:0x005e, B:74:0x00f2, B:76:0x00fc, B:78:0x0106, B:80:0x010a, B:81:0x0112, B:82:0x0117, B:84:0x012a, B:93:0x013f, B:95:0x0151, B:97:0x0158, B:99:0x0164, B:101:0x016b, B:108:0x018a, B:102:0x017b, B:104:0x017f, B:110:0x0192, B:111:0x019a, B:113:0x01a0, B:114:0x01a6, B:116:0x01ac, B:118:0x01b7, B:123:0x01c2, B:125:0x01ca, B:127:0x01d0, B:129:0x01d6, B:145:0x0204, B:147:0x020a, B:151:0x0217, B:133:0x01de, B:135:0x01e6, B:137:0x01ed, B:139:0x01f2, B:141:0x01fa, B:143:0x0200, B:171:0x0261, B:169:0x025a, B:154:0x0228, B:158:0x0233, B:160:0x0239, B:161:0x023c, B:162:0x023d, B:163:0x0243, B:165:0x0250, B:121:0x01bc, B:172:0x0267, B:174:0x027f, B:176:0x0283, B:177:0x028a, B:178:0x0291, B:180:0x029e, B:182:0x02aa, B:184:0x02bd, B:185:0x02cd, B:186:0x02d7, B:188:0x02dd, B:190:0x02e3, B:30:0x0065, B:32:0x006d, B:193:0x02f7, B:49:0x009d), top: B:221:0x0003 }, TRY_LEAVE] */
        /* JADX WARN: Removed duplicated region for block: B:135:0x01e6 A[Catch: ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, all -> 0x00de, Merged into TryCatch #15 {all -> 0x00de, ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, blocks: (B:3:0x0003, B:7:0x0010, B:8:0x0016, B:10:0x001a, B:12:0x0022, B:14:0x0026, B:15:0x002c, B:39:0x0082, B:41:0x008a, B:43:0x0091, B:46:0x0096, B:73:0x00ec, B:17:0x0031, B:19:0x0035, B:20:0x0039, B:22:0x003f, B:24:0x0049, B:34:0x0075, B:36:0x007b, B:51:0x00a6, B:53:0x00aa, B:55:0x00ae, B:59:0x00c3, B:61:0x00c7, B:64:0x00d1, B:66:0x00d5, B:71:0x00e2, B:72:0x00eb, B:27:0x005e, B:74:0x00f2, B:76:0x00fc, B:78:0x0106, B:80:0x010a, B:81:0x0112, B:82:0x0117, B:84:0x012a, B:93:0x013f, B:95:0x0151, B:97:0x0158, B:99:0x0164, B:101:0x016b, B:108:0x018a, B:102:0x017b, B:104:0x017f, B:110:0x0192, B:111:0x019a, B:113:0x01a0, B:114:0x01a6, B:116:0x01ac, B:118:0x01b7, B:123:0x01c2, B:125:0x01ca, B:127:0x01d0, B:129:0x01d6, B:145:0x0204, B:147:0x020a, B:151:0x0217, B:133:0x01de, B:135:0x01e6, B:137:0x01ed, B:139:0x01f2, B:141:0x01fa, B:143:0x0200, B:171:0x0261, B:169:0x025a, B:154:0x0228, B:158:0x0233, B:160:0x0239, B:161:0x023c, B:162:0x023d, B:163:0x0243, B:165:0x0250, B:121:0x01bc, B:172:0x0267, B:174:0x027f, B:176:0x0283, B:177:0x028a, B:178:0x0291, B:180:0x029e, B:182:0x02aa, B:184:0x02bd, B:185:0x02cd, B:186:0x02d7, B:188:0x02dd, B:190:0x02e3, B:30:0x0065, B:32:0x006d, B:193:0x02f7, B:49:0x009d), top: B:221:0x0003 }, TRY_LEAVE] */
        /* JADX WARN: Removed duplicated region for block: B:169:0x025a A[Catch: ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, all -> 0x00de, Merged into TryCatch #15 {all -> 0x00de, ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, blocks: (B:3:0x0003, B:7:0x0010, B:8:0x0016, B:10:0x001a, B:12:0x0022, B:14:0x0026, B:15:0x002c, B:39:0x0082, B:41:0x008a, B:43:0x0091, B:46:0x0096, B:73:0x00ec, B:17:0x0031, B:19:0x0035, B:20:0x0039, B:22:0x003f, B:24:0x0049, B:34:0x0075, B:36:0x007b, B:51:0x00a6, B:53:0x00aa, B:55:0x00ae, B:59:0x00c3, B:61:0x00c7, B:64:0x00d1, B:66:0x00d5, B:71:0x00e2, B:72:0x00eb, B:27:0x005e, B:74:0x00f2, B:76:0x00fc, B:78:0x0106, B:80:0x010a, B:81:0x0112, B:82:0x0117, B:84:0x012a, B:93:0x013f, B:95:0x0151, B:97:0x0158, B:99:0x0164, B:101:0x016b, B:108:0x018a, B:102:0x017b, B:104:0x017f, B:110:0x0192, B:111:0x019a, B:113:0x01a0, B:114:0x01a6, B:116:0x01ac, B:118:0x01b7, B:123:0x01c2, B:125:0x01ca, B:127:0x01d0, B:129:0x01d6, B:145:0x0204, B:147:0x020a, B:151:0x0217, B:133:0x01de, B:135:0x01e6, B:137:0x01ed, B:139:0x01f2, B:141:0x01fa, B:143:0x0200, B:171:0x0261, B:169:0x025a, B:154:0x0228, B:158:0x0233, B:160:0x0239, B:161:0x023c, B:162:0x023d, B:163:0x0243, B:165:0x0250, B:121:0x01bc, B:172:0x0267, B:174:0x027f, B:176:0x0283, B:177:0x028a, B:178:0x0291, B:180:0x029e, B:182:0x02aa, B:184:0x02bd, B:185:0x02cd, B:186:0x02d7, B:188:0x02dd, B:190:0x02e3, B:30:0x0065, B:32:0x006d, B:193:0x02f7, B:49:0x009d), top: B:221:0x0003 }, TRY_ENTER] */
        /* JADX WARN: Removed duplicated region for block: B:174:0x027f A[Catch: ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, all -> 0x00de, Merged into TryCatch #15 {all -> 0x00de, ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, blocks: (B:3:0x0003, B:7:0x0010, B:8:0x0016, B:10:0x001a, B:12:0x0022, B:14:0x0026, B:15:0x002c, B:39:0x0082, B:41:0x008a, B:43:0x0091, B:46:0x0096, B:73:0x00ec, B:17:0x0031, B:19:0x0035, B:20:0x0039, B:22:0x003f, B:24:0x0049, B:34:0x0075, B:36:0x007b, B:51:0x00a6, B:53:0x00aa, B:55:0x00ae, B:59:0x00c3, B:61:0x00c7, B:64:0x00d1, B:66:0x00d5, B:71:0x00e2, B:72:0x00eb, B:27:0x005e, B:74:0x00f2, B:76:0x00fc, B:78:0x0106, B:80:0x010a, B:81:0x0112, B:82:0x0117, B:84:0x012a, B:93:0x013f, B:95:0x0151, B:97:0x0158, B:99:0x0164, B:101:0x016b, B:108:0x018a, B:102:0x017b, B:104:0x017f, B:110:0x0192, B:111:0x019a, B:113:0x01a0, B:114:0x01a6, B:116:0x01ac, B:118:0x01b7, B:123:0x01c2, B:125:0x01ca, B:127:0x01d0, B:129:0x01d6, B:145:0x0204, B:147:0x020a, B:151:0x0217, B:133:0x01de, B:135:0x01e6, B:137:0x01ed, B:139:0x01f2, B:141:0x01fa, B:143:0x0200, B:171:0x0261, B:169:0x025a, B:154:0x0228, B:158:0x0233, B:160:0x0239, B:161:0x023c, B:162:0x023d, B:163:0x0243, B:165:0x0250, B:121:0x01bc, B:172:0x0267, B:174:0x027f, B:176:0x0283, B:177:0x028a, B:178:0x0291, B:180:0x029e, B:182:0x02aa, B:184:0x02bd, B:185:0x02cd, B:186:0x02d7, B:188:0x02dd, B:190:0x02e3, B:30:0x0065, B:32:0x006d, B:193:0x02f7, B:49:0x009d), top: B:221:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:180:0x029e A[Catch: ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, all -> 0x00de, Merged into TryCatch #15 {all -> 0x00de, ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, blocks: (B:3:0x0003, B:7:0x0010, B:8:0x0016, B:10:0x001a, B:12:0x0022, B:14:0x0026, B:15:0x002c, B:39:0x0082, B:41:0x008a, B:43:0x0091, B:46:0x0096, B:73:0x00ec, B:17:0x0031, B:19:0x0035, B:20:0x0039, B:22:0x003f, B:24:0x0049, B:34:0x0075, B:36:0x007b, B:51:0x00a6, B:53:0x00aa, B:55:0x00ae, B:59:0x00c3, B:61:0x00c7, B:64:0x00d1, B:66:0x00d5, B:71:0x00e2, B:72:0x00eb, B:27:0x005e, B:74:0x00f2, B:76:0x00fc, B:78:0x0106, B:80:0x010a, B:81:0x0112, B:82:0x0117, B:84:0x012a, B:93:0x013f, B:95:0x0151, B:97:0x0158, B:99:0x0164, B:101:0x016b, B:108:0x018a, B:102:0x017b, B:104:0x017f, B:110:0x0192, B:111:0x019a, B:113:0x01a0, B:114:0x01a6, B:116:0x01ac, B:118:0x01b7, B:123:0x01c2, B:125:0x01ca, B:127:0x01d0, B:129:0x01d6, B:145:0x0204, B:147:0x020a, B:151:0x0217, B:133:0x01de, B:135:0x01e6, B:137:0x01ed, B:139:0x01f2, B:141:0x01fa, B:143:0x0200, B:171:0x0261, B:169:0x025a, B:154:0x0228, B:158:0x0233, B:160:0x0239, B:161:0x023c, B:162:0x023d, B:163:0x0243, B:165:0x0250, B:121:0x01bc, B:172:0x0267, B:174:0x027f, B:176:0x0283, B:177:0x028a, B:178:0x0291, B:180:0x029e, B:182:0x02aa, B:184:0x02bd, B:185:0x02cd, B:186:0x02d7, B:188:0x02dd, B:190:0x02e3, B:30:0x0065, B:32:0x006d, B:193:0x02f7, B:49:0x009d), top: B:221:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:199:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:219:0x01ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:227:0x002f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x008a A[Catch: ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, all -> 0x00de, Merged into TryCatch #15 {all -> 0x00de, ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, blocks: (B:3:0x0003, B:7:0x0010, B:8:0x0016, B:10:0x001a, B:12:0x0022, B:14:0x0026, B:15:0x002c, B:39:0x0082, B:41:0x008a, B:43:0x0091, B:46:0x0096, B:73:0x00ec, B:17:0x0031, B:19:0x0035, B:20:0x0039, B:22:0x003f, B:24:0x0049, B:34:0x0075, B:36:0x007b, B:51:0x00a6, B:53:0x00aa, B:55:0x00ae, B:59:0x00c3, B:61:0x00c7, B:64:0x00d1, B:66:0x00d5, B:71:0x00e2, B:72:0x00eb, B:27:0x005e, B:74:0x00f2, B:76:0x00fc, B:78:0x0106, B:80:0x010a, B:81:0x0112, B:82:0x0117, B:84:0x012a, B:93:0x013f, B:95:0x0151, B:97:0x0158, B:99:0x0164, B:101:0x016b, B:108:0x018a, B:102:0x017b, B:104:0x017f, B:110:0x0192, B:111:0x019a, B:113:0x01a0, B:114:0x01a6, B:116:0x01ac, B:118:0x01b7, B:123:0x01c2, B:125:0x01ca, B:127:0x01d0, B:129:0x01d6, B:145:0x0204, B:147:0x020a, B:151:0x0217, B:133:0x01de, B:135:0x01e6, B:137:0x01ed, B:139:0x01f2, B:141:0x01fa, B:143:0x0200, B:171:0x0261, B:169:0x025a, B:154:0x0228, B:158:0x0233, B:160:0x0239, B:161:0x023c, B:162:0x023d, B:163:0x0243, B:165:0x0250, B:121:0x01bc, B:172:0x0267, B:174:0x027f, B:176:0x0283, B:177:0x028a, B:178:0x0291, B:180:0x029e, B:182:0x02aa, B:184:0x02bd, B:185:0x02cd, B:186:0x02d7, B:188:0x02dd, B:190:0x02e3, B:30:0x0065, B:32:0x006d, B:193:0x02f7, B:49:0x009d), top: B:221:0x0003 }, TRY_LEAVE] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x00ec A[Catch: ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, all -> 0x00de, Merged into TryCatch #15 {all -> 0x00de, ClosedSelectorException -> 0x0064, CancelledKeyException -> 0x009c, blocks: (B:3:0x0003, B:7:0x0010, B:8:0x0016, B:10:0x001a, B:12:0x0022, B:14:0x0026, B:15:0x002c, B:39:0x0082, B:41:0x008a, B:43:0x0091, B:46:0x0096, B:73:0x00ec, B:17:0x0031, B:19:0x0035, B:20:0x0039, B:22:0x003f, B:24:0x0049, B:34:0x0075, B:36:0x007b, B:51:0x00a6, B:53:0x00aa, B:55:0x00ae, B:59:0x00c3, B:61:0x00c7, B:64:0x00d1, B:66:0x00d5, B:71:0x00e2, B:72:0x00eb, B:27:0x005e, B:74:0x00f2, B:76:0x00fc, B:78:0x0106, B:80:0x010a, B:81:0x0112, B:82:0x0117, B:84:0x012a, B:93:0x013f, B:95:0x0151, B:97:0x0158, B:99:0x0164, B:101:0x016b, B:108:0x018a, B:102:0x017b, B:104:0x017f, B:110:0x0192, B:111:0x019a, B:113:0x01a0, B:114:0x01a6, B:116:0x01ac, B:118:0x01b7, B:123:0x01c2, B:125:0x01ca, B:127:0x01d0, B:129:0x01d6, B:145:0x0204, B:147:0x020a, B:151:0x0217, B:133:0x01de, B:135:0x01e6, B:137:0x01ed, B:139:0x01f2, B:141:0x01fa, B:143:0x0200, B:171:0x0261, B:169:0x025a, B:154:0x0228, B:158:0x0233, B:160:0x0239, B:161:0x023c, B:162:0x023d, B:163:0x0243, B:165:0x0250, B:121:0x01bc, B:172:0x0267, B:174:0x027f, B:176:0x0283, B:177:0x028a, B:178:0x0291, B:180:0x029e, B:182:0x02aa, B:184:0x02bd, B:185:0x02cd, B:186:0x02d7, B:188:0x02dd, B:190:0x02e3, B:30:0x0065, B:32:0x006d, B:193:0x02f7, B:49:0x009d), top: B:221:0x0003 }, TRY_ENTER] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void doSelect() {
            /*
                Method dump skipped, instruction units count: 772
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.SelectorManager.SelectSet.doSelect():void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            try {
                synchronized (this) {
                    Selector selector = this.e;
                    if (selector != null) {
                        Selector selectorOpen = Selector.open();
                        for (SelectionKey selectionKey : selector.keys()) {
                            if (selectionKey.isValid() && selectionKey.interestOps() != 0) {
                                SelectableChannel selectableChannelChannel = selectionKey.channel();
                                Object objAttachment = selectionKey.attachment();
                                if (objAttachment == null) {
                                    addChange(selectableChannelChannel);
                                } else {
                                    addChange(selectableChannelChannel, objAttachment);
                                }
                            }
                        }
                        this.e.close();
                        this.e = selectorOpen;
                    }
                }
            } catch (IOException e) {
                throw new RuntimeException("recreating selector", e);
            }
        }

        public SelectorManager getManager() {
            return SelectorManager.this;
        }

        public long getNow() {
            return this.c.getNow();
        }

        public void scheduleTimeout(Timeout.Task task, long j) {
            if (!(task instanceof Runnable)) {
                throw new IllegalArgumentException("!Runnable");
            }
            this.c.schedule(task, j);
        }

        public void cancelTimeout(Timeout.Task task) {
            task.cancel();
        }

        public void wakeup() {
            try {
                Selector selector = this.e;
                if (selector != null) {
                    selector.wakeup();
                }
            } catch (Exception e) {
                addChange(new a() { // from class: org.eclipse.jetty.io.nio.SelectorManager.SelectSet.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SelectSet.this.c();
                    }
                });
                c();
            }
        }

        private SelectChannelEndPoint a(SocketChannel socketChannel, SelectionKey selectionKey) {
            SelectChannelEndPoint selectChannelEndPointNewEndPoint = SelectorManager.this.newEndPoint(socketChannel, this, selectionKey);
            SelectorManager.LOG.debug("created {}", selectChannelEndPointNewEndPoint);
            SelectorManager.this.endPointOpened(selectChannelEndPointNewEndPoint);
            this.l.put(selectChannelEndPointNewEndPoint, this);
            return selectChannelEndPointNewEndPoint;
        }

        public void destroyEndPoint(SelectChannelEndPoint selectChannelEndPoint) {
            SelectorManager.LOG.debug("destroyEndPoint {}", selectChannelEndPoint);
            this.l.remove(selectChannelEndPoint);
            SelectorManager.this.endPointClosed(selectChannelEndPoint);
        }

        Selector a() {
            return this.e;
        }

        void b() {
            Selector selector;
            for (int i = 0; i < 100; i++) {
                try {
                    if (this.f == null) {
                        break;
                    }
                    wakeup();
                    Thread.sleep(10L);
                } catch (Exception e) {
                    SelectorManager.LOG.ignore(e);
                }
            }
            synchronized (this) {
                for (SelectionKey selectionKey : this.e.keys()) {
                    if (selectionKey != null) {
                        Object objAttachment = selectionKey.attachment();
                        if (objAttachment instanceof EndPoint) {
                            try {
                                ((EndPoint) objAttachment).close();
                            } catch (IOException e2) {
                                SelectorManager.LOG.ignore(e2);
                            }
                        }
                    }
                }
                this.c.cancelAll();
                try {
                    selector = this.e;
                } catch (IOException e3) {
                    SelectorManager.LOG.ignore(e3);
                }
                if (selector != null) {
                    selector.close();
                    this.e = null;
                } else {
                    this.e = null;
                }
            }
        }

        @Override // org.eclipse.jetty.util.component.Dumpable
        public String dump() {
            return AggregateLifeCycle.dump(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.StackTraceElement] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v3 */
        @Override // org.eclipse.jetty.util.component.Dumpable
        public void dump(Appendable appendable, String str) throws IOException {
            ?? r0;
            appendable.append(String.valueOf(this)).append(" id=").append(String.valueOf(this.b)).append("\n");
            Thread thread = this.f;
            ?? stackTrace = thread == null ? 0 : thread.getStackTrace();
            if (stackTrace == 0) {
                r0 = "not selecting";
            } else {
                int length = stackTrace.length;
                for (int i = 0; i < length; i++) {
                    r0 = stackTrace[i];
                    if (r0.getClassName().startsWith("org.eclipse.jetty.")) {
                        break;
                    }
                }
                r0 = "not selecting";
            }
            Selector selector = this.e;
            if (selector != null) {
                final ArrayList arrayList = new ArrayList(selector.keys().size() * 2);
                arrayList.add(r0);
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                addChange(new a() { // from class: org.eclipse.jetty.io.nio.SelectorManager.SelectSet.3
                    @Override // java.lang.Runnable
                    public void run() {
                        SelectSet.this.dumpKeyState(arrayList);
                        countDownLatch.countDown();
                    }
                });
                try {
                    countDownLatch.await(5L, TimeUnit.SECONDS);
                } catch (InterruptedException e) {
                    SelectorManager.LOG.ignore(e);
                }
                AggregateLifeCycle.dump(appendable, str, arrayList);
            }
        }

        public void dumpKeyState(List<Object> list) {
            Selector selector = this.e;
            Set<SelectionKey> setKeys = selector.keys();
            list.add(selector + " keys=" + setKeys.size());
            for (SelectionKey selectionKey : setKeys) {
                if (selectionKey.isValid()) {
                    list.add(selectionKey.attachment() + " iOps=" + selectionKey.interestOps() + " rOps=" + selectionKey.readyOps());
                } else {
                    list.add(selectionKey.attachment() + " iOps=-1 rOps=-1");
                }
            }
        }

        public String toString() {
            int size = -1;
            Selector selector = this.e;
            Object[] objArr = new Object[3];
            objArr[0] = super.toString();
            objArr[1] = Integer.valueOf((selector == null || !selector.isOpen()) ? -1 : selector.keys().size());
            if (selector != null && selector.isOpen()) {
                size = selector.selectedKeys().size();
            }
            objArr[2] = Integer.valueOf(size);
            return String.format("%s keys=%d selected=%d", objArr);
        }
    }

    static class b {
        final SelectableChannel a;
        final Object b;

        public b(SelectableChannel selectableChannel, Object obj) {
            this.a = selectableChannel;
            this.b = obj;
        }
    }

    public boolean isDeferringInterestedOps0() {
        return this.k;
    }

    public void setDeferringInterestedOps0(boolean z) {
        this.k = z;
    }
}
