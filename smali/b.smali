.class public Lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(LCatalano/Core/IntPoint;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iput v0, p0, Lb;->a:I

    .line 145
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    iput v0, p0, Lb;->b:I

    .line 146
    iput v1, p0, Lb;->c:F

    .line 147
    iput v1, p0, Lb;->d:F

    .line 148
    return-void
.end method


# virtual methods
.method public a(Lb;)I
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lb;->c:F

    iget v1, p1, Lb;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 155
    :cond_0
    iget v0, p0, Lb;->c:F

    iget v1, p1, Lb;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()LCatalano/Core/IntPoint;
    .locals 3

    .prologue
    .line 164
    new-instance v0, LCatalano/Core/IntPoint;

    iget v1, p0, Lb;->a:I

    iget v2, p0, Lb;->b:I

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 137
    check-cast p1, Lb;

    invoke-virtual {p0, p1}, Lb;->a(Lb;)I

    move-result v0

    return v0
.end method
