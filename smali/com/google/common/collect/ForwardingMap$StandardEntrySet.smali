.class public abstract Lcom/google/common/collect/ForwardingMap$StandardEntrySet;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StandardEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/common/collect/ForwardingMap$StandardEntrySet;->a:Lcom/google/common/collect/ForwardingMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method
