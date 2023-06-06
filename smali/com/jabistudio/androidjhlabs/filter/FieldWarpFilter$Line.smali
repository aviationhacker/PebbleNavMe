.class public Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Line"
.end annotation


# instance fields
.field public dx:I

.field public dy:I

.field public length:F

.field public lengthSquared:F

.field public x1:I

.field public x2:I

.field public y1:I

.field public y2:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x1:I

    .line 35
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y1:I

    .line 36
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x2:I

    .line 37
    iput p4, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y2:I

    .line 38
    return-void
.end method


# virtual methods
.method public setup()V
    .locals 3

    .prologue
    .line 41
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x2:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->x1:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dx:I

    .line 42
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y2:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->y1:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dy:I

    .line 43
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dx:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dx:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dy:I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->dy:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->lengthSquared:F

    .line 44
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->lengthSquared:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/FieldWarpFilter$Line;->length:F

    .line 45
    return-void
.end method
