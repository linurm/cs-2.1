.class Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$5;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->onLeaveApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$5;->this$0:Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener$5;->this$0:Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;->access$000(Lcom/heyzap/sdk/integrations/mopub/MoPubInterstitial$UiWrappedCustomEventInterstitialListener;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 223
    return-void
.end method