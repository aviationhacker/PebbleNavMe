.class public LCatalano/Math/RationalNumber;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    .line 90
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 91
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 92
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    .line 108
    iput-object p1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 109
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    .line 118
    iput-object p1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 119
    iput-object p2, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 121
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The denominator must be different from zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 125
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "-1"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 126
    iget-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "-1"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 129
    :cond_1
    iget-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->Factorize()V

    .line 132
    :cond_2
    return-void
.end method

.method public static Abs(LCatalano/Math/RationalNumber;)LCatalano/Math/RationalNumber;
    .locals 3

    .prologue
    .line 140
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static Add(LCatalano/Math/RationalNumber;LCatalano/Math/RationalNumber;)LCatalano/Math/RationalNumber;
    .locals 3

    .prologue
    .line 151
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 152
    invoke-virtual {v0, p1}, LCatalano/Math/RationalNumber;->Add(LCatalano/Math/RationalNumber;)V

    .line 153
    return-object v0
.end method

.method public static Divide(LCatalano/Math/RationalNumber;LCatalano/Math/RationalNumber;)LCatalano/Math/RationalNumber;
    .locals 3

    .prologue
    .line 223
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 224
    invoke-virtual {v0, p1}, LCatalano/Math/RationalNumber;->Divide(LCatalano/Math/RationalNumber;)V

    .line 225
    return-object v0
.end method

.method public static Multiply(LCatalano/Math/RationalNumber;LCatalano/Math/RationalNumber;)LCatalano/Math/RationalNumber;
    .locals 3

    .prologue
    .line 278
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 279
    invoke-virtual {v0, p1}, LCatalano/Math/RationalNumber;->Multiply(LCatalano/Math/RationalNumber;)V

    .line 280
    return-object v0
.end method

.method public static Pow(LCatalano/Math/RationalNumber;I)LCatalano/Math/RationalNumber;
    .locals 3

    .prologue
    .line 342
    new-instance v1, LCatalano/Math/RationalNumber;

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 343
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 344
    invoke-static {v1, p0}, LCatalano/Math/RationalNumber;->Multiply(LCatalano/Math/RationalNumber;LCatalano/Math/RationalNumber;)LCatalano/Math/RationalNumber;

    move-result-object v1

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-object v1
.end method

.method public static Subtract(LCatalano/Math/RationalNumber;LCatalano/Math/RationalNumber;)LCatalano/Math/RationalNumber;
    .locals 3

    .prologue
    .line 373
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 374
    invoke-virtual {v0, p1}, LCatalano/Math/RationalNumber;->Subtract(LCatalano/Math/RationalNumber;)V

    .line 375
    return-object v0
.end method


# virtual methods
.method public Abs()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 161
    return-void
.end method

.method public Add(I)V
    .locals 1

    .prologue
    .line 168
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1}, LCatalano/Math/RationalNumber;-><init>(I)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Add(LCatalano/Math/RationalNumber;)V

    .line 169
    return-void
.end method

.method public Add(II)V
    .locals 1

    .prologue
    .line 177
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(II)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Add(LCatalano/Math/RationalNumber;)V

    .line 178
    return-void
.end method

.method public Add(LCatalano/Math/RationalNumber;)V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {p1}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 204
    iget-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 205
    invoke-virtual {p1}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 208
    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 210
    iget-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->Factorize()V

    .line 213
    :cond_0
    return-void
.end method

.method public Add(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 185
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Add(LCatalano/Math/RationalNumber;)V

    .line 186
    return-void
.end method

.method public Add(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 194
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Add(LCatalano/Math/RationalNumber;)V

    .line 195
    return-void
.end method

.method public Divide(I)V
    .locals 1

    .prologue
    .line 233
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1}, LCatalano/Math/RationalNumber;-><init>(I)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Divide(LCatalano/Math/RationalNumber;)V

    .line 234
    return-void
.end method

.method public Divide(II)V
    .locals 1

    .prologue
    .line 242
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(II)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Divide(LCatalano/Math/RationalNumber;)V

    .line 243
    return-void
.end method

.method public Divide(LCatalano/Math/RationalNumber;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p1, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    iget-object v1, p1, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, LCatalano/Math/RationalNumber;->Multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 268
    return-void
.end method

.method public Divide(Ljava/math/BigInteger;)V
    .locals 3

    .prologue
    .line 250
    new-instance v0, LCatalano/Math/RationalNumber;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "1"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Divide(LCatalano/Math/RationalNumber;)V

    .line 251
    return-void
.end method

.method public Divide(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 259
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Divide(LCatalano/Math/RationalNumber;)V

    .line 260
    return-void
.end method

.method public Factorize()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 434
    iget-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 435
    iget-object v1, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 436
    return-void
.end method

.method public Multiply(I)V
    .locals 1

    .prologue
    .line 288
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1}, LCatalano/Math/RationalNumber;-><init>(I)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Multiply(LCatalano/Math/RationalNumber;)V

    .line 289
    return-void
.end method

.method public Multiply(II)V
    .locals 1

    .prologue
    .line 297
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(II)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Multiply(LCatalano/Math/RationalNumber;)V

    .line 298
    return-void
.end method

.method public Multiply(LCatalano/Math/RationalNumber;)V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    iget-object v1, p1, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 323
    iget-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    iget-object v1, p1, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 325
    iget-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 326
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "-1"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 327
    iget-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "-1"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 330
    :cond_0
    iget-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->Factorize()V

    .line 332
    :cond_1
    return-void
.end method

.method public Multiply(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 305
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Multiply(LCatalano/Math/RationalNumber;)V

    .line 306
    return-void
.end method

.method public Multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 314
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Multiply(LCatalano/Math/RationalNumber;)V

    .line 315
    return-void
.end method

.method public Subtract(I)V
    .locals 1

    .prologue
    .line 383
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1}, LCatalano/Math/RationalNumber;-><init>(I)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Subtract(LCatalano/Math/RationalNumber;)V

    .line 384
    return-void
.end method

.method public Subtract(II)V
    .locals 1

    .prologue
    .line 392
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(II)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Subtract(LCatalano/Math/RationalNumber;)V

    .line 393
    return-void
.end method

.method public Subtract(LCatalano/Math/RationalNumber;)V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {p1}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 419
    iget-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, LCatalano/Math/RationalNumber;->getDenominator()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 420
    invoke-virtual {p1}, LCatalano/Math/RationalNumber;->getNumerator()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 422
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 423
    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 425
    iget-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, LCatalano/Math/RationalNumber;->Factorize()V

    .line 427
    :cond_0
    return-void
.end method

.method public Subtract(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 400
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Subtract(LCatalano/Math/RationalNumber;)V

    .line 401
    return-void
.end method

.method public Subtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 409
    new-instance v0, LCatalano/Math/RationalNumber;

    invoke-direct {v0, p1, p2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, LCatalano/Math/RationalNumber;->Subtract(LCatalano/Math/RationalNumber;)V

    .line 410
    return-void
.end method

.method public Swap()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 443
    iget-object v1, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    iput-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 444
    iput-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 445
    return-void
.end method

.method public doubleValue()D
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getDenominator()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNumerator()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isAlwaysFactorize()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, LCatalano/Math/RationalNumber;->a:Z

    return v0
.end method

.method public pow(I)V
    .locals 4

    .prologue
    .line 357
    new-instance v1, LCatalano/Math/RationalNumber;

    iget-object v0, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    iget-object v2, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v0, v2}, LCatalano/Math/RationalNumber;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 358
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 359
    iget-object v2, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    iget-object v3, v1, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 360
    iget-object v2, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    iget-object v3, v1, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public setAlwaysFactorize(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, LCatalano/Math/RationalNumber;->a:Z

    .line 83
    return-void
.end method

.method public setDenominator(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    .line 67
    return-void
.end method

.method public setNumerator(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LCatalano/Math/RationalNumber;->b:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LCatalano/Math/RationalNumber;->c:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
