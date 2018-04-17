.class Lcom/heyzap/sdk/ads/VASTActivity$1;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "VASTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/VASTActivity;->fireUrls(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/VASTActivity;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/VASTActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/heyzap/sdk/ads/VASTActivity$1;->this$0:Lcom/heyzap/sdk/ads/VASTActivity;

    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
