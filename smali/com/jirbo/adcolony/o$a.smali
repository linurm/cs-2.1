.class Lcom/jirbo/adcolony/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:D

.field i:J

.field j:J

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    invoke-static {}, Lcom/jirbo/adcolony/g;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/o$a;->k:Ljava/lang/String;

    .line 402
    invoke-static {}, Lcom/jirbo/adcolony/q;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/o$a;->l:Ljava/lang/String;

    return-void
.end method
