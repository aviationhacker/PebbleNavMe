.class final Lcom/google/common/hash/Hashing$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Llb;

    invoke-direct {v0}, Llb;-><init>()V

    sput-object v0, Lcom/google/common/hash/Hashing$e;->a:Lcom/google/common/hash/HashFunction;

    return-void
.end method
