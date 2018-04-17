.class Lcom/heyzap/mediation/display/WaterfallMediator$2$1;
.super Ljava/lang/Object;
.source "WaterfallMediator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator$2;->run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/DisplayConfig$Network;)I
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iget-object v0, v0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v0}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$000(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v0

    iget-object v1, p1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v2, p1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iget-object v1, v1, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {v1}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$000(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v1

    iget-object v2, p2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    iget-object v3, p2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v1

    .line 85
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 87
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/heyzap/mediation/display/DisplayConfig$Network;->getScore()Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iget-object v3, v3, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v3}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMaxScore(Ljava/lang/Double;Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lcom/heyzap/mediation/display/DisplayConfig$Network;->getScore()Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iget-object v3, v3, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v3}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMaxScore(Ljava/lang/Double;Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Double;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    check-cast p2, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->compare(Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/DisplayConfig$Network;)I

    move-result v0

    return v0
.end method
