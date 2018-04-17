.class Lcom/heyzap/sdk/ads/HeyzapAds$2$1;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/HeyzapAds$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/HeyzapAds$2;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/HeyzapAds$2;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$2$1;->this$0:Lcom/heyzap/sdk/ads/HeyzapAds$2;

    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method
