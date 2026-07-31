.class Lcom/google/common/hash/Hashing$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 167
    new-instance v1, Llf;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide v4, 0x706050403020100L

    const-wide v6, 0xf0e0d0c0b0a0908L

    invoke-direct/range {v1 .. v7}, Llf;-><init>(IIJJ)V

    sput-object v1, Lcom/google/common/hash/Hashing$n;->a:Lcom/google/common/hash/HashFunction;

    return-void
.end method
