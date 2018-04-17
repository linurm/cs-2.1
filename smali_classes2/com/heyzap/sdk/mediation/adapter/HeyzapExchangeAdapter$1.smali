.class Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;
.super Ljava/lang/Object;
.source "HeyzapExchangeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->showInterstitial(Lcom/heyzap/mediation/request/MediationRequest;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)Lcom/heyzap/common/lifecycle/AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

.field final synthetic val$client:Lcom/heyzap/exchange/ExchangeClient;

.field final synthetic val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

.field final synthetic val$passthroughParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Lcom/heyzap/exchange/ExchangeClient;Lcom/heyzap/mediation/request/MediationRequest;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    iput-object p4, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$passthroughParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;->access$002(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 122
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$client:Lcom/heyzap/exchange/ExchangeClient;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getRequestingActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$1;->val$passthroughParams:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeClient;->show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/util/Map;)V

    .line 123
    return-void
.end method
