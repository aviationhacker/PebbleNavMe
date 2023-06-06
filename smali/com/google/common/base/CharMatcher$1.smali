.class Lcom/google/common/base/CharMatcher$1;
.super Lcom/google/common/base/CharMatcher$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->a()Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$1;->b:Lcom/google/common/base/CharMatcher;

    iput-object p3, p0, Lcom/google/common/base/CharMatcher$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/common/base/CharMatcher$w;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$1;->a:Ljava/lang/String;

    return-object v0
.end method
