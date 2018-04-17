.class Lcom/heyzap/internal/PackageManager$1$1$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/PackageManager$1$1;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/internal/PackageManager$1$1;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/PackageManager$1$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/heyzap/internal/PackageManager$1$1$1;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
