.class public LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field b:[I

.field public bestAttemptColor:LCatalano/Imaging/Color;

.field c:I

.field public closed:Z

.field public currentAttemptColor:LCatalano/Imaging/Color;

.field public filled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->bestAttemptColor:LCatalano/Imaging/Color;

    .line 51
    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->currentAttemptColor:LCatalano/Imaging/Color;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->closed:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->filled:Z

    .line 71
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Color;LCatalano/Imaging/Color;ZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->bestAttemptColor:LCatalano/Imaging/Color;

    .line 51
    iput-object v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->currentAttemptColor:LCatalano/Imaging/Color;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->closed:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->filled:Z

    .line 74
    iput-object p1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->bestAttemptColor:LCatalano/Imaging/Color;

    .line 75
    iput-object p2, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->currentAttemptColor:LCatalano/Imaging/Color;

    .line 76
    iput-boolean p3, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->closed:Z

    .line 77
    iput-boolean p4, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->filled:Z

    .line 78
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bestAttemptColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->bestAttemptColor:LCatalano/Imaging/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentAttemptColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->currentAttemptColor:LCatalano/Imaging/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LCatalano/Imaging/ActiveContour/Ovuscule/OvusculeSnake2DScale;->filled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
