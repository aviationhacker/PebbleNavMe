.class public LCatalano/Imaging/Filters/Opening;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/Opening;->b:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/Opening;->b:I

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput v1, p0, LCatalano/Imaging/Filters/Opening;->b:I

    .line 56
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 57
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/Opening;->b:I

    .line 58
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/Opening;->b:I

    .line 48
    iput-object p1, p0, LCatalano/Imaging/Filters/Opening;->a:[[I

    .line 49
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;I)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, LCatalano/Imaging/Filters/Erosion;

    invoke-direct {v0, p2}, LCatalano/Imaging/Filters/Erosion;-><init>(I)V

    .line 79
    new-instance v1, LCatalano/Imaging/Filters/Dilatation;

    invoke-direct {v1, p2}, LCatalano/Imaging/Filters/Dilatation;-><init>(I)V

    .line 80
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Erosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 81
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Dilatation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 82
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[I)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, LCatalano/Imaging/Filters/Erosion;

    invoke-direct {v0, p2}, LCatalano/Imaging/Filters/Erosion;-><init>([[I)V

    .line 72
    new-instance v1, LCatalano/Imaging/Filters/Dilatation;

    invoke-direct {v1, p2}, LCatalano/Imaging/Filters/Dilatation;-><init>([[I)V

    .line 73
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Erosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 74
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Dilatation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 75
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 62
    iget v0, p0, LCatalano/Imaging/Filters/Opening;->b:I

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, LCatalano/Imaging/Filters/Opening;->b:I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/Opening;->a(LCatalano/Imaging/FastBitmap;I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Filters/Opening;->a:[[I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/Opening;->a(LCatalano/Imaging/FastBitmap;[[I)V

    goto :goto_0
.end method
