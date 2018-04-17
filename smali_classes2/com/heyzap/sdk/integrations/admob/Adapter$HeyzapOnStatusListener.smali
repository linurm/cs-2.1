.class Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;
.super Ljava/lang/Object;
.source "Adapter.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/integrations/admob/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeyzapOnStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/integrations/admob/Adapter;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/integrations/admob/Adapter;Lcom/heyzap/sdk/integrations/admob/Adapter$1;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;-><init>(Lcom/heyzap/sdk/integrations/admob/Adapter;)V

    return-void
.end method


# virtual methods
.method public onAudioFinished()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onAudioStarted()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$300(Lcom/heyzap/sdk/integrations/admob/Adapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$1;-><init>(Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$300(Lcom/heyzap/sdk/integrations/admob/Adapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$2;-><init>(Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    :cond_1
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onLeaveApplication()V

    .line 184
    :cond_1
    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 245
    :cond_1
    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 207
    :cond_1
    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 195
    :cond_1
    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 172
    :cond_1
    return-void
.end method
