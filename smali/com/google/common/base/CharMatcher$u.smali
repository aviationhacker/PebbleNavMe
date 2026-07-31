.class public abstract Lcom/google/common/base/CharMatcher$u;
.super Lcom/google/common/base/CharMatcher$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "u"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$h;-><init>()V

    .line 974
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$u;->a:Ljava/lang/String;

    .line 975
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$u;->a:Ljava/lang/String;

    return-object v0
.end method
