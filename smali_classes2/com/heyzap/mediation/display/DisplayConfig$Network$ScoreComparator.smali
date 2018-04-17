.class public Lcom/heyzap/mediation/display/DisplayConfig$Network$ScoreComparator;
.super Ljava/lang/Object;
.source "DisplayConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/display/DisplayConfig$Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScoreComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/heyzap/mediation/display/DisplayConfig$Network;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/display/DisplayConfig$Network;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/display/DisplayConfig$Network;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/heyzap/mediation/display/DisplayConfig$Network$ScoreComparator;->this$0:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/DisplayConfig$Network;)I
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/heyzap/mediation/display/DisplayConfig$Network;->getScore()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2}, Lcom/heyzap/mediation/display/DisplayConfig$Network;->getScore()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    check-cast p2, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/display/DisplayConfig$Network$ScoreComparator;->compare(Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/DisplayConfig$Network;)I

    move-result v0

    return v0
.end method
