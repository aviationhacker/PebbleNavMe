.class public Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/ThreadLocalBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadBuffers"
.end annotation


# instance fields
.field a:Lorg/eclipse/jetty/io/Buffer;

.field b:Lorg/eclipse/jetty/io/Buffer;

.field c:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
