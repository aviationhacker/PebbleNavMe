.class public Lcom/jabistudio/androidjhlabs/filter/FlipFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLIP_180:I = 0x6

.field public static final FLIP_90CCW:I = 0x5

.field public static final FLIP_90CW:I = 0x4

.field public static final FLIP_H:I = 0x1

.field public static final FLIP_HV:I = 0x3

.field public static final FLIP_V:I = 0x2


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/FlipFilter;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/FlipFilter;->a:I

    .line 69
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 90
    .line 103
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FlipFilter;->a:I

    packed-switch v0, :pswitch_data_0

    move v0, p3

    move v1, p2

    .line 134
    :goto_0
    mul-int/2addr v0, v1

    new-array v6, v0, [I

    move v3, v5

    .line 136
    :goto_1
    if-ge v3, p3, :cond_1

    move v2, v5

    .line 137
    :goto_2
    if-ge v2, p2, :cond_0

    .line 138
    mul-int v0, v3, p2

    add-int v7, v0, v2

    .line 141
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FlipFilter;->a:I

    packed-switch v0, :pswitch_data_1

    move v0, v2

    move v4, v3

    .line 165
    :goto_3
    mul-int/2addr v4, v1

    add-int/2addr v0, v4

    .line 166
    aget v4, p1, v7

    aput v4, v6, v0

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :pswitch_0
    add-int v0, v5, p2

    sub-int v0, p2, v0

    move v0, p3

    move v1, p2

    .line 106
    goto :goto_0

    .line 108
    :pswitch_1
    add-int v0, v5, p3

    sub-int v0, p3, v0

    move v0, p3

    move v1, p2

    .line 109
    goto :goto_0

    :pswitch_2
    move v0, p2

    move v1, p3

    .line 115
    goto :goto_0

    .line 119
    :pswitch_3
    add-int v0, v5, p3

    sub-int v0, p3, v0

    move v0, p2

    move v1, p3

    .line 121
    goto :goto_0

    .line 126
    :pswitch_4
    add-int v0, v5, p2

    sub-int v0, p2, v0

    move v0, p2

    move v1, p3

    .line 127
    goto :goto_0

    .line 129
    :pswitch_5
    add-int v0, v5, p2

    sub-int v0, p2, v0

    .line 130
    add-int v0, v5, p3

    sub-int v0, p3, v0

    move v0, p3

    move v1, p2

    goto :goto_0

    .line 143
    :pswitch_6
    sub-int v0, p2, v2

    add-int/lit8 v0, v0, -0x1

    move v4, v3

    .line 144
    goto :goto_3

    .line 146
    :pswitch_7
    sub-int v0, p3, v3

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v2

    .line 147
    goto :goto_3

    :pswitch_8
    move v0, v3

    move v4, v2

    .line 151
    goto :goto_3

    .line 154
    :pswitch_9
    sub-int v0, p3, v3

    add-int/lit8 v0, v0, -0x1

    move v4, v2

    .line 155
    goto :goto_3

    .line 157
    :pswitch_a
    sub-int v0, p2, v2

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v3

    .line 159
    goto :goto_3

    .line 161
    :pswitch_b
    sub-int v0, p3, v3

    add-int/lit8 v4, v0, -0x1

    .line 162
    sub-int v0, p2, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    :cond_1
    return-object v6

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getOperation()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FlipFilter;->a:I

    return v0
.end method

.method public setOperation(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/FlipFilter;->a:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/FlipFilter;->a:I

    packed-switch v0, :pswitch_data_0

    .line 187
    const-string v0, "Flip"

    :goto_0
    return-object v0

    .line 175
    :pswitch_0
    const-string v0, "Flip Horizontal"

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v0, "Flip Vertical"

    goto :goto_0

    .line 179
    :pswitch_2
    const-string v0, "Flip Diagonal"

    goto :goto_0

    .line 181
    :pswitch_3
    const-string v0, "Rotate 90"

    goto :goto_0

    .line 183
    :pswitch_4
    const-string v0, "Rotate -90"

    goto :goto_0

    .line 185
    :pswitch_5
    const-string v0, "Rotate 180"

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
