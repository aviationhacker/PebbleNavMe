.class public final enum LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalysisMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

.field public static final enum Standartize:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

.field private static final synthetic a:[LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    const-string v1, "Standartize"

    invoke-direct {v0, v1, v2}, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->Standartize:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    .line 20
    new-instance v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    const-string v1, "Center"

    invoke-direct {v0, v1, v3}, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->Center:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    sget-object v1, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->Standartize:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->Center:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->a:[LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;
    .locals 1

    .prologue
    .line 18
    const-class v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    return-object v0
.end method

.method public static values()[LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;
    .locals 1

    .prologue
    .line 18
    sget-object v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->a:[LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    invoke-virtual {v0}, [LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    return-object v0
.end method
