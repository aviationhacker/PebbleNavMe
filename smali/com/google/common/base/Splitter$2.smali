.class final Lcom/google/common/base/Splitter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Splitter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/common/base/Splitter$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$a;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/google/common/base/Splitter$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/Splitter$2$1;-><init>(Lcom/google/common/base/Splitter$2;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$2;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$a;

    move-result-object v0

    return-object v0
.end method
