.class final enum Lcom/google/common/base/Suppliers$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Suppliers$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Suppliers$e;",
        ">;",
        "Lcom/google/common/base/Suppliers$d",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/Suppliers$e;

.field private static final synthetic b:[Lcom/google/common/base/Suppliers$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    new-instance v0, Lcom/google/common/base/Suppliers$e;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Suppliers$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Suppliers$e;->a:Lcom/google/common/base/Suppliers$e;

    .line 308
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Suppliers$e;

    sget-object v1, Lcom/google/common/base/Suppliers$e;->a:Lcom/google/common/base/Suppliers$e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/Suppliers$e;->b:[Lcom/google/common/base/Suppliers$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Suppliers$e;
    .locals 1

    .prologue
    .line 308
    const-class v0, Lcom/google/common/base/Suppliers$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Suppliers$e;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Suppliers$e;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/google/common/base/Suppliers$e;->b:[Lcom/google/common/base/Suppliers$e;

    invoke-virtual {v0}, [Lcom/google/common/base/Suppliers$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Suppliers$e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/base/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 314
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    check-cast p1, Lcom/google/common/base/Supplier;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Suppliers$e;->a(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, "Suppliers.supplierFunction()"

    return-object v0
.end method
