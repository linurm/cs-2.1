.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdListener"
.end annotation


# instance fields
.field adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 290
    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 330
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 2

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    invoke-direct {v1, v2, p1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public onCachedAdAvailable()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$200()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-eqz p1, :cond_1

    const-string v0, "incentivized_result_complete"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 300
    return-void

    .line 295
    :cond_1
    const-string v0, "incentivized_result_incomplete"

    goto :goto_0
.end method
