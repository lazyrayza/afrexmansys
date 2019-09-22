function scrollLastPostIntoView() {
  const posts = document.querySelectorAll('.post');
  const lastPost = posts[posts.length - 1];

  if (lastPost !== undefined) {
    lastPost.scrollIntoView();
  }
}
