.class Lcom/heyzap/house/model/VideoModel$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "VideoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/VideoModel;->onComplete(Landroid/content/Context;IILjava/lang/Boolean;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/model/VideoModel;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/VideoModel;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel$1;->this$0:Lcom/heyzap/house/model/VideoModel;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    const-string v0, "status"

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 252
    const-string v0, "(COMPLETE) %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/heyzap/house/model/VideoModel$1;->this$0:Lcom/heyzap/house/model/VideoModel;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$1;->this$0:Lcom/heyzap/house/model/VideoModel;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/house/model/VideoModel;->access$002(Lcom/heyzap/house/model/VideoModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v0, "Video completion not received by server."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
