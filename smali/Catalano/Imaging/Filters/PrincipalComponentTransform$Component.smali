.class public final enum LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/PrincipalComponentTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Blue:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

.field public static final enum Green:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

.field public static final enum RGB:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

.field public static final enum Red:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

.field private static final synthetic a:[LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    const-string v1, "Red"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Red:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    .line 46
    new-instance v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    const-string v1, "Green"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Green:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    .line 50
    new-instance v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    const-string v1, "Blue"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Blue:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    .line 54
    new-instance v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    const-string v1, "RGB"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->RGB:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    sget-object v1, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Red:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Green:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->Blue:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->RGB:LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->a:[LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

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

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;
    .locals 1

    .prologue
    .line 38
    const-class v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;
    .locals 1

    .prologue
    .line 38
    sget-object v0, LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->a:[LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/PrincipalComponentTransform$Component;

    return-object v0
.end method
