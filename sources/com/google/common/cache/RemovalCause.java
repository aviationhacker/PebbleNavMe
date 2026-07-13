package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public enum RemovalCause {
    EXPLICIT { // from class: com.google.common.cache.RemovalCause.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.cache.RemovalCause
        public boolean a() {
            return false;
        }
    },
    REPLACED { // from class: com.google.common.cache.RemovalCause.2
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.cache.RemovalCause
        public boolean a() {
            return false;
        }
    },
    COLLECTED { // from class: com.google.common.cache.RemovalCause.3
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.cache.RemovalCause
        public boolean a() {
            return true;
        }
    },
    EXPIRED { // from class: com.google.common.cache.RemovalCause.4
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.cache.RemovalCause
        public boolean a() {
            return true;
        }
    },
    SIZE { // from class: com.google.common.cache.RemovalCause.5
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.cache.RemovalCause
        public boolean a() {
            return true;
        }
    };

    public abstract boolean a();
}
