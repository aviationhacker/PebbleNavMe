.class public LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;
.super LCatalano/Core/DoublePoint;
.source "SourceFile"


# instance fields
.field public frozen:Z

.field public hidden:Z


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, LCatalano/Core/DoublePoint;-><init>(DD)V

    .line 42
    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    .line 50
    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->hidden:Z

    .line 68
    return-void
.end method

.method public constructor <init>(DDZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, LCatalano/Core/DoublePoint;-><init>(DD)V

    .line 42
    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    .line 50
    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->hidden:Z

    .line 83
    iput-boolean p5, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    .line 84
    iput-boolean p6, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->hidden:Z

    .line 85
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, LCatalano/Core/DoublePoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frozen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->frozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DNode;->hidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
