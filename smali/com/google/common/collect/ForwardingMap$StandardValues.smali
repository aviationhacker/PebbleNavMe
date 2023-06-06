.class public Lcom/google/common/collect/ForwardingMap$StandardValues;
.super Lcom/google/common/collect/Maps$ac;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ac",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/common/collect/ForwardingMap$StandardValues;->a:Lcom/google/common/collect/ForwardingMap;

    .line 233
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$ac;-><init>(Ljava/util/Map;)V

    .line 234
    return-void
.end method
