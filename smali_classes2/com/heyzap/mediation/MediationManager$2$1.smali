.class Lcom/heyzap/mediation/MediationManager$2$1;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "MediationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/MediationManager$2;->onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/MediationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/MediationManager$2;

.field final synthetic val$config:Lcom/heyzap/mediation/config/MediationConfig;

.field final synthetic val$filterContext:Lcom/heyzap/mediation/filters/FilterContext;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/MediationManager$2;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/mediation/config/MediationConfig;Lcom/heyzap/mediation/filters/FilterContext;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iput-object p3, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$config:Lcom/heyzap/mediation/config/MediationConfig;

    iput-object p4, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$filterContext:Lcom/heyzap/mediation/filters/FilterContext;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/MediationResult;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 142
    if-eqz p2, :cond_1

    .line 143
    const-string v0, "Mediation Failed"

    invoke-static {v0, p2}, Lcom/heyzap/internal/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->sendDisplayFailed(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    const-string v1, "mediation failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/request/MediationRequest;->sendDisplayFailed(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$300(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/handler/MediationEventReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0, v1, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->sendFetchResults(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)V

    .line 150
    iget-object v0, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    if-eqz v0, :cond_2

    .line 152
    const-string v0, "Selected Network: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v3, v3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->info(Ljava/lang/String;)V

    .line 154
    iget-object v0, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0, v1, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$300(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/handler/MediationEventReporter;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0, v2, p1, v1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->bindDisplayCallbacks(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    .line 156
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->addDisplay(Lcom/heyzap/common/lifecycle/AdDisplay;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$config:Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getInterstitialVideoTracker()Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    iget-object v3, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    invoke-virtual {v0, v2, v3, v1}, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->addDisplay(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult$NetworkResult;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    .line 158
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$config:Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$filterContext:Lcom/heyzap/mediation/filters/FilterContext;

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/mediation/filters/FilterManager;->addDisplay(Lcom/heyzap/mediation/filters/FilterContext;Lcom/heyzap/common/lifecycle/AdDisplay;)V

    .line 159
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/request/MediationRequest;->addDisplay(Lcom/heyzap/common/lifecycle/AdDisplay;)V

    .line 160
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$100(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    move-result-object v0

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/MediationManager;->fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    const-string v1, "no selected network"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/request/MediationRequest;->sendDisplayFailed(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->sendDisplayFailed(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lcom/heyzap/mediation/MediationResult;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/MediationManager$2$1;->run(Lcom/heyzap/mediation/MediationResult;Ljava/lang/Exception;)V

    return-void
.end method
