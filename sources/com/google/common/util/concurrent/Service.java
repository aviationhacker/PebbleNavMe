package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@Beta
public interface Service {

    @Beta
    public enum State {
        NEW { // from class: com.google.common.util.concurrent.Service.State.1
            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        },
        STARTING { // from class: com.google.common.util.concurrent.Service.State.2
            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        },
        RUNNING { // from class: com.google.common.util.concurrent.Service.State.3
            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        },
        STOPPING { // from class: com.google.common.util.concurrent.Service.State.4
            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        },
        TERMINATED { // from class: com.google.common.util.concurrent.Service.State.5
            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return true;
            }
        },
        FAILED { // from class: com.google.common.util.concurrent.Service.State.6
            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return true;
            }
        };

        abstract boolean a();
    }

    void addListener(Listener listener, Executor executor);

    void awaitRunning();

    void awaitRunning(long j, TimeUnit timeUnit);

    void awaitTerminated();

    void awaitTerminated(long j, TimeUnit timeUnit);

    Throwable failureCause();

    boolean isRunning();

    Service startAsync();

    State state();

    Service stopAsync();

    @Beta
    public static abstract class Listener {
        public void starting() {
        }

        public void running() {
        }

        public void stopping(State state) {
        }

        public void terminated(State state) {
        }

        public void failed(State state, Throwable th) {
        }
    }
}
