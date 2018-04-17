.class Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiWrappedCustomEventInterstitialListener"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final inner:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->inner:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 174
    iput-object p2, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->handler:Landroid/os/Handler;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->inner:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$4;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$4;-><init>(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$6;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$6;-><init>(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$2;-><init>(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$1;-><init>(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onInterstitialShown()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$3;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$3;-><init>(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public onLeaveApplication()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$5;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$5;-><init>(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method
