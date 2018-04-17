.class Lcom/heyzap/sdk/ads/BannerAd$2;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/BannerAd;->internalHide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/BannerAd;

.field final synthetic val$destroy:Z


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/BannerAd;Z)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAd$2;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    iput-boolean p2, p0, Lcom/heyzap/sdk/ads/BannerAd$2;->val$destroy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd$2;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAd;->access$100(Lcom/heyzap/sdk/ads/BannerAd;)V

    .line 69
    iget-boolean v0, p0, Lcom/heyzap/sdk/ads/BannerAd$2;->val$destroy:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd$2;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAd;->access$200(Lcom/heyzap/sdk/ads/BannerAd;)Lcom/heyzap/sdk/ads/BannerAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->destroy()Z

    .line 72
    :cond_0
    return-void
.end method
