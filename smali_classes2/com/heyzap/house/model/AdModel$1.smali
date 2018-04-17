.class Lcom/heyzap/house/model/AdModel$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "AdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/AdModel;->onClick(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/model/AdModel;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel$1;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    const-string v0, "status"

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 162
    const-string v0, "(CLICK) %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/heyzap/house/model/AdModel$1;->this$0:Lcom/heyzap/house/model/AdModel;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$1;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$002(Lcom/heyzap/house/model/AdModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 165
    :cond_0
    return-void
.end method
