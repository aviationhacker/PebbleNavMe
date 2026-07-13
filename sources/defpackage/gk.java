package defpackage;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public class gk implements ProxyApi.ProxyResult {
    private Status a;
    private ProxyResponse b;

    public gk(ProxyResponse proxyResponse) {
        this.b = proxyResponse;
        this.a = Status.zzabb;
    }

    public gk(Status status) {
        this.a = status;
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult
    public ProxyResponse getResponse() {
        return this.b;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.a;
    }
}
