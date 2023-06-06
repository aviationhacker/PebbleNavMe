.class final Lcom/google/common/util/concurrent/AbstractFuture$h;
.super Lcom/google/common/util/concurrent/AbstractFuture$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# static fields
.field static final a:Lsun/misc/Unsafe;

.field static final b:J

.field static final c:J

.field static final d:J

.field static final e:J

.field static final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 894
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 916
    :goto_0
    :try_start_1
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 917
    const-string v2, "waiters"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->c:J

    .line 918
    const-string v2, "listeners"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->b:J

    .line 919
    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->d:J

    .line 920
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture$j;

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->e:J

    .line 921
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture$j;

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->f:J

    .line 922
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$h;->a:Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 926
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 897
    :try_start_2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$h$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractFuture$h$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 911
    :catch_1
    move-exception v0

    .line 912
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 923
    :catch_2
    move-exception v0

    .line 924
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$a;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    .locals 0

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)V
    .locals 4

    .prologue
    .line 935
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$h;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->f:J

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 936
    return-void
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture$j;Ljava/lang/Thread;)V
    .locals 4

    .prologue
    .line 930
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$h;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->e:J

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 931
    return-void
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;Lcom/google/common/util/concurrent/AbstractFuture$d;)Z
    .locals 6

    .prologue
    .line 947
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$h;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->b:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)Z
    .locals 6

    .prologue
    .line 941
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$h;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 953
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$h;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFuture$h;->d:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
