.class public Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jabistudio/androidjhlabs/filter/CellularFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point"
.end annotation


# instance fields
.field final synthetic a:Lcom/jabistudio/androidjhlabs/filter/CellularFilter;

.field public cubeX:F

.field public cubeY:F

.field public distance:F

.field public dx:F

.field public dy:F

.field public index:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/jabistudio/androidjhlabs/filter/CellularFilter;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->a:Lcom/jabistudio/androidjhlabs/filter/CellularFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
