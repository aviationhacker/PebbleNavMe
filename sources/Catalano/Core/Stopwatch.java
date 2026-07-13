package Catalano.Core;

/* JADX INFO: loaded from: classes.dex */
public class Stopwatch {
    private Long a;
    private Long b;
    private Long c;

    public void Start() {
        this.a = Long.valueOf(System.currentTimeMillis());
    }

    public void Stop() {
        this.b = Long.valueOf(System.currentTimeMillis());
        this.c = Long.valueOf(this.b.longValue() - this.a.longValue());
        Reset();
    }

    public void Reset() {
        this.b = 0L;
        this.a = 0L;
    }

    public void Restart() {
        Reset();
        this.a = Long.valueOf(System.currentTimeMillis());
    }

    public Long ElapsedMilliseconds() {
        return this.c;
    }

    public boolean isRunning() {
        return this.a.longValue() != 0;
    }
}
