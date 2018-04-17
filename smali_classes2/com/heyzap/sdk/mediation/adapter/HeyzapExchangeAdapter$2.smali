.class Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;
.super Ljava/lang/Object;
.source "HeyzapExchangeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->fetchAndShowBanner(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;Ljava/util/Map;)Lcom/heyzap/common/lifecycle/AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

.field final synthetic val$clientFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

.field final synthetic val$passthroughParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->val$clientFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->val$passthroughParams:Ljava/util/Map;

    iput-object p4, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->val$clientFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeClient;

    .line 156
    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeClient;->getRealBannerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->val$passthroughParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/heyzap/exchange/ExchangeClient;->bindDisplayWithParams(Ljava/util/Map;)V

    .line 160
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v2, v0, Lcom/heyzap/exchange/ExchangeClient;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object v2, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 161
    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    .line 162
    iput-object v0, v1, Lcom/heyzap/common/lifecycle/DisplayResult;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    .line 163
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$2;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
