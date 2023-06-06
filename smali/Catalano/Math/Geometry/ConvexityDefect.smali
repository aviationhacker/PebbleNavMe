.class public LCatalano/Math/Geometry/ConvexityDefect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:LCatalano/Core/IntPoint;

.field private d:D


# direct methods
.method public constructor <init>(LCatalano/Core/IntPoint;IID)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LCatalano/Math/Geometry/ConvexityDefect;->c:LCatalano/Core/IntPoint;

    .line 47
    iput p2, p0, LCatalano/Math/Geometry/ConvexityDefect;->a:I

    .line 48
    iput p3, p0, LCatalano/Math/Geometry/ConvexityDefect;->b:I

    .line 49
    return-void
.end method


# virtual methods
.method public getDepth()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, LCatalano/Math/Geometry/ConvexityDefect;->d:D

    return-wide v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, LCatalano/Math/Geometry/ConvexityDefect;->b:I

    return v0
.end method

.method public getPoint()LCatalano/Core/IntPoint;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, LCatalano/Math/Geometry/ConvexityDefect;->c:LCatalano/Core/IntPoint;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, LCatalano/Math/Geometry/ConvexityDefect;->a:I

    return v0
.end method

.method public setDepth(D)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, LCatalano/Math/Geometry/ConvexityDefect;->d:D

    .line 65
    return-void
.end method

.method public setEnd(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, LCatalano/Math/Geometry/ConvexityDefect;->b:I

    .line 81
    return-void
.end method

.method public setPoint(LCatalano/Core/IntPoint;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, LCatalano/Math/Geometry/ConvexityDefect;->c:LCatalano/Core/IntPoint;

    .line 97
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, LCatalano/Math/Geometry/ConvexityDefect;->a:I

    .line 113
    return-void
.end method
