/**
 * @Route("/example", name="example_action")
 * @Template("example.html.twig")
 */
public function exampleAction(Request $request)
{
    $forms = array();
    $views = array();
    foreach ($participations as $e) {
        $form = $this->createForm(DocumentType::class, $documentation);
        $forms[] = $form;
        $views[] = $form->createView();
    }

    foreach ($forms as $form)
    {
        $form->handleRequest($request);

        if (!$form->isSubmitted()) continue;

        if ($form->isValid())
        {
            // Normal form stuff, eg. persisting
        }
    }

    // return views to twig template
    return array("forms" => $views);