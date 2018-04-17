.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdListener"
.end annotation


# instance fields
.field private final adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 326
    return-void
.end method

.method static synthetic access$900(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;)Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    return-object v0
.end method


# virtual methods
.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public onFetchCompleted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->onFetchCompleted()V

    .line 337
    return-void
.end method

.method public onFetchFailed()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "fetch_failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "Failed to load."

    invoke-direct {v1, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public onFetchFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->onFetchFailed()V

    .line 348
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "hide"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 364
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;

    invoke-direct {v1, p0, p2}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;Z)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$1000(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/common/concurrency/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 373
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    const-string v1, "audio_starting"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 378
    return-void
.end method
