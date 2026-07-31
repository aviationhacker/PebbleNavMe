.class public LCatalano/Imaging/Tools/Blob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:LCatalano/Core/IntPoint;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:LCatalano/Imaging/Shapes/IntRectangle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILCatalano/Core/IntPoint;Ljava/util/ArrayList;LCatalano/Imaging/Shapes/IntRectangle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "LCatalano/Core/IntPoint;",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;",
            "LCatalano/Imaging/Shapes/IntRectangle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, LCatalano/Imaging/Tools/Blob;->a:I

    .line 56
    iput p2, p0, LCatalano/Imaging/Tools/Blob;->b:I

    .line 57
    iput-object p3, p0, LCatalano/Imaging/Tools/Blob;->c:LCatalano/Core/IntPoint;

    .line 58
    iput-object p4, p0, LCatalano/Imaging/Tools/Blob;->d:Ljava/util/ArrayList;

    .line 59
    iget v0, p5, LCatalano/Imaging/Shapes/IntRectangle;->width:I

    iput v0, p0, LCatalano/Imaging/Tools/Blob;->e:I

    .line 60
    iget v0, p5, LCatalano/Imaging/Shapes/IntRectangle;->height:I

    iput v0, p0, LCatalano/Imaging/Tools/Blob;->f:I

    .line 61
    iput-object p5, p0, LCatalano/Imaging/Tools/Blob;->g:LCatalano/Imaging/Shapes/IntRectangle;

    .line 62
    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, LCatalano/Imaging/Tools/Blob;->b:I

    return v0
.end method

.method public getBoundingBox()LCatalano/Imaging/Shapes/IntRectangle;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, LCatalano/Imaging/Tools/Blob;->g:LCatalano/Imaging/Shapes/IntRectangle;

    return-object v0
.end method

.method public getCenter()LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, LCatalano/Imaging/Tools/Blob;->c:LCatalano/Core/IntPoint;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, LCatalano/Imaging/Tools/Blob;->f:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, LCatalano/Imaging/Tools/Blob;->a:I

    return v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, LCatalano/Imaging/Tools/Blob;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, LCatalano/Imaging/Tools/Blob;->e:I

    return v0
.end method
