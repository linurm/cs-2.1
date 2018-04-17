.class Lcom/heyzap/sdk/ads/BannerAd$3;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/BannerAd;->show(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/BannerAd;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/BannerAd;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAd$3;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/BannerAd$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd$3;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAd;->access$300(Lcom/heyzap/sdk/ads/BannerAd;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAd$3;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    invoke-static {v1}, Lcom/heyzap/sdk/ads/BannerAd;->access$400(Lcom/heyzap/sdk/ads/BannerAd;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAd$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/heyzap/sdk/ads/BannerAd$3;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    invoke-static {v2}, Lcom/heyzap/sdk/ads/BannerAd;->access$200(Lcom/heyzap/sdk/ads/BannerAd;)Lcom/heyzap/sdk/ads/BannerAdView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_0
    return-void
.end method
