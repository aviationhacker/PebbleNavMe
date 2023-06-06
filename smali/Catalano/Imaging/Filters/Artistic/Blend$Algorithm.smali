.class public final enum LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/Artistic/Blend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Add:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Average:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum ColorBurn:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum ColorDodge:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Darken:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Difference:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Exclusion:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum HardLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Lighten:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum LinearLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Multiply:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Negation:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Overlay:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Phoenix:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum PinLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Reflect:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Screen:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum SoftLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum Subtract:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field public static final enum VividLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field private static final synthetic a:[LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Lighten"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Lighten:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 48
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Darken"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Darken:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 53
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Multiply"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Multiply:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 58
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Average"

    invoke-direct {v0, v1, v6}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Average:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 63
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Add"

    invoke-direct {v0, v1, v7}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Add:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 68
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Subtract"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Subtract:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 74
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Difference"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Difference:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 79
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Negation"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Negation:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 84
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Screen"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Screen:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 90
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Exclusion"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Exclusion:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 96
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Overlay"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Overlay:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 101
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "SoftLight"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->SoftLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 106
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "HardLight"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->HardLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 111
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "ColorDodge"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->ColorDodge:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 116
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "ColorBurn"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->ColorBurn:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 123
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "LinearLight"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->LinearLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 131
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "VividLight"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->VividLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 136
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "PinLight"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->PinLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 141
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Reflect"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Reflect:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 146
    new-instance v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    const-string v1, "Phoenix"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Phoenix:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    sget-object v1, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Lighten:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Darken:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Multiply:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v1, v0, v5

    sget-object v1, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Average:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v1, v0, v6

    sget-object v1, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Add:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Subtract:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Difference:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Negation:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Screen:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Exclusion:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Overlay:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->SoftLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->HardLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->ColorDodge:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->ColorBurn:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->LinearLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->VividLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->PinLight:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Reflect:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Phoenix:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    aput-object v2, v0, v1

    sput-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->a:[LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;
    .locals 1

    .prologue
    .line 38
    const-class v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;
    .locals 1

    .prologue
    .line 38
    sget-object v0, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->a:[LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    return-object v0
.end method
