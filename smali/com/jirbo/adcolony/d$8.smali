.class Lcom/jirbo/adcolony/d$8;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jirbo/adcolony/d;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/jirbo/adcolony/d$8;->c:Lcom/jirbo/adcolony/d;

    iput-object p3, p0, Lcom/jirbo/adcolony/d$8;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/jirbo/adcolony/d$8;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/jirbo/adcolony/d$8;->q:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/d$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/d$8;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jirbo/adcolony/k;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V

    .line 258
    return-void
.end method
