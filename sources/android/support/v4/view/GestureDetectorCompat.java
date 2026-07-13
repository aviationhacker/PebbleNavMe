package android.support.v4.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.google.android.gms.auth.api.credentials.CredentialsApi;

/* JADX INFO: loaded from: classes.dex */
public class GestureDetectorCompat {
    private final a a;

    interface a {
        void a(GestureDetector.OnDoubleTapListener onDoubleTapListener);

        void a(boolean z);

        boolean a();

        boolean a(MotionEvent motionEvent);
    }

    static class b implements a {
        private static final int e = ViewConfiguration.getLongPressTimeout();
        private static final int f = ViewConfiguration.getTapTimeout();
        private static final int g = ViewConfiguration.getDoubleTapTimeout();
        private int a;
        private int b;
        private int c;
        private int d;
        private final Handler h;
        private final GestureDetector.OnGestureListener i;
        private GestureDetector.OnDoubleTapListener j;
        private boolean k;
        private boolean l;
        private boolean m;
        private boolean n;
        private boolean o;
        private MotionEvent p;
        private MotionEvent q;
        private boolean r;
        private float s;
        private float t;
        private float u;
        private float v;
        private boolean w;
        private VelocityTracker x;

        class a extends Handler {
            a() {
            }

            a(Handler handler) {
                super(handler.getLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        b.this.i.onShowPress(b.this.p);
                        return;
                    case 2:
                        b.this.d();
                        return;
                    case 3:
                        if (b.this.j != null) {
                            if (!b.this.k) {
                                b.this.j.onSingleTapConfirmed(b.this.p);
                                return;
                            } else {
                                b.this.l = true;
                                return;
                            }
                        }
                        return;
                    default:
                        throw new RuntimeException("Unknown message " + message);
                }
            }
        }

        public b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.h = new a(handler);
            } else {
                this.h = new a();
            }
            this.i = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                a((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            a(context);
        }

        private void a(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            if (this.i == null) {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            this.w = true;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.c = viewConfiguration.getScaledMinimumFlingVelocity();
            this.d = viewConfiguration.getScaledMaximumFlingVelocity();
            this.a = scaledTouchSlop * scaledTouchSlop;
            this.b = scaledDoubleTapSlop * scaledDoubleTapSlop;
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.j = onDoubleTapListener;
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public void a(boolean z) {
            this.w = z;
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public boolean a() {
            return this.w;
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public boolean a(MotionEvent motionEvent) {
            boolean zOnFling;
            boolean zOnScroll;
            boolean zOnDoubleTap;
            int action = motionEvent.getAction();
            if (this.x == null) {
                this.x = VelocityTracker.obtain();
            }
            this.x.addMovement(motionEvent);
            boolean z = (action & 255) == 6;
            int actionIndex = z ? MotionEventCompat.getActionIndex(motionEvent) : -1;
            int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
            float y = 0.0f;
            float x = 0.0f;
            for (int i = 0; i < pointerCount; i++) {
                if (actionIndex != i) {
                    x += MotionEventCompat.getX(motionEvent, i);
                    y += MotionEventCompat.getY(motionEvent, i);
                }
            }
            int i2 = z ? pointerCount - 1 : pointerCount;
            float f2 = x / i2;
            float f3 = y / i2;
            switch (action & 255) {
                case 0:
                    if (this.j == null) {
                        zOnDoubleTap = false;
                    } else {
                        boolean zHasMessages = this.h.hasMessages(3);
                        if (zHasMessages) {
                            this.h.removeMessages(3);
                        }
                        if (this.p != null && this.q != null && zHasMessages && a(this.p, this.q, motionEvent)) {
                            this.r = true;
                            zOnDoubleTap = this.j.onDoubleTap(this.p) | false | this.j.onDoubleTapEvent(motionEvent);
                        } else {
                            this.h.sendEmptyMessageDelayed(3, g);
                            zOnDoubleTap = false;
                        }
                    }
                    this.s = f2;
                    this.u = f2;
                    this.t = f3;
                    this.v = f3;
                    if (this.p != null) {
                        this.p.recycle();
                    }
                    this.p = MotionEvent.obtain(motionEvent);
                    this.n = true;
                    this.o = true;
                    this.k = true;
                    this.m = false;
                    this.l = false;
                    if (this.w) {
                        this.h.removeMessages(2);
                        this.h.sendEmptyMessageAtTime(2, this.p.getDownTime() + ((long) f) + ((long) e));
                    }
                    this.h.sendEmptyMessageAtTime(1, this.p.getDownTime() + ((long) f));
                    break;
                case 1:
                    this.k = false;
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    if (this.r) {
                        zOnFling = this.j.onDoubleTapEvent(motionEvent) | false;
                    } else if (this.m) {
                        this.h.removeMessages(3);
                        this.m = false;
                        zOnFling = false;
                    } else if (this.n) {
                        zOnFling = this.i.onSingleTapUp(motionEvent);
                        if (this.l && this.j != null) {
                            this.j.onSingleTapConfirmed(motionEvent);
                        }
                    } else {
                        VelocityTracker velocityTracker = this.x;
                        int pointerId = MotionEventCompat.getPointerId(motionEvent, 0);
                        velocityTracker.computeCurrentVelocity(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, this.d);
                        float yVelocity = VelocityTrackerCompat.getYVelocity(velocityTracker, pointerId);
                        float xVelocity = VelocityTrackerCompat.getXVelocity(velocityTracker, pointerId);
                        zOnFling = (Math.abs(yVelocity) > ((float) this.c) || Math.abs(xVelocity) > ((float) this.c)) ? this.i.onFling(this.p, motionEvent, xVelocity, yVelocity) : false;
                    }
                    if (this.q != null) {
                        this.q.recycle();
                    }
                    this.q = motionEventObtain;
                    if (this.x != null) {
                        this.x.recycle();
                        this.x = null;
                    }
                    this.r = false;
                    this.l = false;
                    this.h.removeMessages(1);
                    this.h.removeMessages(2);
                    break;
                case 2:
                    if (!this.m) {
                        float f4 = this.s - f2;
                        float f5 = this.t - f3;
                        if (!this.r) {
                            if (this.n) {
                                int i3 = (int) (f2 - this.u);
                                int i4 = (int) (f3 - this.v);
                                int i5 = (i3 * i3) + (i4 * i4);
                                if (i5 > this.a) {
                                    zOnScroll = this.i.onScroll(this.p, motionEvent, f4, f5);
                                    this.s = f2;
                                    this.t = f3;
                                    this.n = false;
                                    this.h.removeMessages(3);
                                    this.h.removeMessages(1);
                                    this.h.removeMessages(2);
                                } else {
                                    zOnScroll = false;
                                }
                                if (i5 > this.a) {
                                    this.o = false;
                                }
                            } else if (Math.abs(f4) >= 1.0f || Math.abs(f5) >= 1.0f) {
                                boolean zOnScroll2 = this.i.onScroll(this.p, motionEvent, f4, f5);
                                this.s = f2;
                                this.t = f3;
                            }
                        }
                    }
                    break;
                case 3:
                    b();
                    break;
                case 5:
                    this.s = f2;
                    this.u = f2;
                    this.t = f3;
                    this.v = f3;
                    c();
                    break;
                case 6:
                    this.s = f2;
                    this.u = f2;
                    this.t = f3;
                    this.v = f3;
                    this.x.computeCurrentVelocity(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, this.d);
                    int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                    int pointerId2 = MotionEventCompat.getPointerId(motionEvent, actionIndex2);
                    float xVelocity2 = VelocityTrackerCompat.getXVelocity(this.x, pointerId2);
                    float yVelocity2 = VelocityTrackerCompat.getYVelocity(this.x, pointerId2);
                    for (int i6 = 0; i6 < pointerCount; i6++) {
                        if (i6 != actionIndex2) {
                            int pointerId3 = MotionEventCompat.getPointerId(motionEvent, i6);
                            if ((VelocityTrackerCompat.getYVelocity(this.x, pointerId3) * yVelocity2) + (VelocityTrackerCompat.getXVelocity(this.x, pointerId3) * xVelocity2) < 0.0f) {
                                this.x.clear();
                                break;
                            }
                        }
                    }
                    break;
            }
            return false;
        }

        private void b() {
            this.h.removeMessages(1);
            this.h.removeMessages(2);
            this.h.removeMessages(3);
            this.x.recycle();
            this.x = null;
            this.r = false;
            this.k = false;
            this.n = false;
            this.o = false;
            this.l = false;
            if (this.m) {
                this.m = false;
            }
        }

        private void c() {
            this.h.removeMessages(1);
            this.h.removeMessages(2);
            this.h.removeMessages(3);
            this.r = false;
            this.n = false;
            this.o = false;
            this.l = false;
            if (this.m) {
                this.m = false;
            }
        }

        private boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.o || motionEvent3.getEventTime() - motionEvent2.getEventTime() > g) {
                return false;
            }
            int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x * x) + (y * y) < this.b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.h.removeMessages(3);
            this.l = false;
            this.m = true;
            this.i.onLongPress(this.p);
        }
    }

    static class c implements a {
        private final GestureDetector a;

        public c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public boolean a() {
            return this.a.isLongpressEnabled();
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public boolean a(MotionEvent motionEvent) {
            return this.a.onTouchEvent(motionEvent);
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public void a(boolean z) {
            this.a.setIsLongpressEnabled(z);
        }

        @Override // android.support.v4.view.GestureDetectorCompat.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.a.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.a = new c(context, onGestureListener, handler);
        } else {
            this.a = new b(context, onGestureListener, handler);
        }
    }

    public boolean isLongpressEnabled() {
        return this.a.a();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.a.a(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.a.a(z);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.a.a(onDoubleTapListener);
    }
}
