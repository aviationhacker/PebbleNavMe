.class public LCatalano/Imaging/Concurrent/Share;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endHeight:I

.field public endWidth:I

.field public fastBitmap:LCatalano/Imaging/FastBitmap;

.field public lastThread:Z

.field public startX:I

.field public startY:I


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;II)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    .line 70
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    .line 71
    iput p2, p0, LCatalano/Imaging/Concurrent/Share;->startX:I

    .line 72
    iput p3, p0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    .line 73
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;IIII)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    .line 97
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    .line 98
    iput p2, p0, LCatalano/Imaging/Concurrent/Share;->startX:I

    .line 99
    iput p3, p0, LCatalano/Imaging/Concurrent/Share;->startY:I

    .line 100
    iput p5, p0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    .line 101
    iput p4, p0, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    .line 102
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;IIIIZ)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    .line 112
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    .line 113
    iput p2, p0, LCatalano/Imaging/Concurrent/Share;->startX:I

    .line 114
    iput p3, p0, LCatalano/Imaging/Concurrent/Share;->startY:I

    .line 115
    iput p5, p0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    .line 116
    iput p4, p0, LCatalano/Imaging/Concurrent/Share;->endWidth:I

    .line 117
    iput-boolean p6, p0, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    .line 118
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;IIZ)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    .line 83
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    .line 84
    iput p2, p0, LCatalano/Imaging/Concurrent/Share;->startX:I

    .line 85
    iput p3, p0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    .line 86
    iput-boolean p4, p0, LCatalano/Imaging/Concurrent/Share;->lastThread:Z

    .line 87
    return-void
.end method
