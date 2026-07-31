.class public LCatalano/Imaging/Filters/TopHat;
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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/TopHat;->b:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 62
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/TopHat;->b:I

    .line 63
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, LCatalano/Imaging/Filters/TopHat;->a:[[I

    .line 54
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;I)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 79
    new-instance v1, LCatalano/Imaging/Filters/BinaryOpening;

    invoke-direct {v1, p2}, LCatalano/Imaging/Filters/BinaryOpening;-><init>(I)V

    .line 80
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/BinaryOpening;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 82
    new-instance v1, LCatalano/Imaging/Filters/Subtract;

    invoke-direct {v1, v0}, LCatalano/Imaging/Filters/Subtract;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 83
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Subtract;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 85
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 86
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[I)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 92
    new-instance v1, LCatalano/Imaging/Filters/BinaryOpening;

    invoke-direct {v1, p2}, LCatalano/Imaging/Filters/BinaryOpening;-><init>([[I)V

    .line 93
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/BinaryOpening;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 95
    new-instance v1, LCatalano/Imaging/Filters/Subtract;

    invoke-direct {v1, v0}, LCatalano/Imaging/Filters/Subtract;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 96
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Subtract;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 98
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 99
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, LCatalano/Imaging/Filters/TopHat;->b:I

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, LCatalano/Imaging/Filters/TopHat;->b:I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/TopHat;->a(LCatalano/Imaging/FastBitmap;I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Filters/TopHat;->a:[[I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/TopHat;->a(LCatalano/Imaging/FastBitmap;[[I)V

    goto :goto_0
.end method
