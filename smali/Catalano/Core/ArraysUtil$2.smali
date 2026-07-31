.class final LCatalano/Core/ArraysUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCatalano/Core/ArraysUtil;->Argsort([IZ)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[I


# direct methods
.method constructor <init>(Z[I)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, LCatalano/Core/ArraysUtil$2;->a:Z

    iput-object p2, p0, LCatalano/Core/ArraysUtil$2;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 4

    .prologue
    .line 88
    iget-boolean v0, p0, LCatalano/Core/ArraysUtil$2;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, LCatalano/Core/ArraysUtil$2;->b:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, LCatalano/Core/ArraysUtil$2;->b:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, LCatalano/Core/ArraysUtil$2;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
