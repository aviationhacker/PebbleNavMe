.class public final Llb;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x20

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Llb$a;

    invoke-direct {v0}, Llb$a;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
