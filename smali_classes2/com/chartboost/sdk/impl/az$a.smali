.class Lcom/chartboost/sdk/impl/az$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/az$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/impl/az$d;

.field private b:Lcom/chartboost/sdk/impl/az$b;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/az$d;Lcom/chartboost/sdk/impl/az$b;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az$a;->a:Lcom/chartboost/sdk/impl/az$d;

    .line 411
    iput-object p2, p0, Lcom/chartboost/sdk/impl/az$a;->b:Lcom/chartboost/sdk/impl/az$b;

    .line 412
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az$a;->a:Lcom/chartboost/sdk/impl/az$d;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az$a;->a:Lcom/chartboost/sdk/impl/az$d;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/az$d;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;)V

    .line 416
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az$a;->b:Lcom/chartboost/sdk/impl/az$b;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az$a;->b:Lcom/chartboost/sdk/impl/az$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/az$b;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/Model/CBError;)V

    .line 420
    :cond_0
    return-void
.end method
